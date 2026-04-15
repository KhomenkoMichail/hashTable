section .text

global findWordInList_asm

%define CAN_NOT_FIND_WORD -0xEDA
%define NODE_NEXT_OFFSET  0
%define NODE_WORD_OFFSET  8
%define NODE_HASH_OFFSET  32

;----------------------------------------------------------------------------------------------
; Searches for a word in a list moving from head to tail.
; Entry: rdi = list pointer
;        rsi = search word
;        rdx = wordHash
; Exit: rax = node index which containssearched word
;             (const CAN_NOT_FIND_WORD if the word was not found)
;Expected:
;Destroyed: rax, rcx, r8, r9, r10, r11
;----------------------------------------------------------------------------------------------
findWordInList_asm:
                        mov r9, [rdi]                         ; r9 = nodeArr base address

                        xor rcx, rcx
                        mov ecx, dword [r9]                   ; ecx = nodeArr[0].next (listHead index)

                        test ecx, ecx                         ; if listHead == 0
                        jz .notFound

.loopStart:

                        lea r8, [rcx + rcx * 4]
                        lea r10, [r9 + r8 * 8]                      ; r10 = curNodeAddress

                        cmp rdx, [r10 + NODE_HASH_OFFSET]           ; cmp hashes
                        je .cmpString

.nextNode:
                        mov ecx, dword [r10 + NODE_NEXT_OFFSET]     ; ecx = curNode.next
                        test ecx, ecx                               ; if (next != 0)
                        jnz .loopStart

.notFound:
                        mov rax, CAN_NOT_FIND_WORD
                        ret

.cmpString:
                        mov r8, rsi                         ; r8 = searched Word
                        mov r11, [r10 + NODE_WORD_OFFSET]   ; r11 = curNode word

                        vpxor ymm3, ymm3, ymm3

                        vmovdqu ymm0, [r8]                  ; ymm0 = searched word vector
                        vmovdqu ymm1, [r11]                 ; ymm1 = curNode word vector

                        vpcmpeqb ymm2, ymm0, ymm1
                        vpmovmskb eax, ymm2                 ; eax = cmp words mask

                        vpcmpeqb ymm4, ymm0, ymm3
                        vpmovmskb r8d, ymm4                 ; r8d = mask of the '\0' position

                        not eax                             ; eax = differences mask
                        tzcnt eax, eax                      ; eax = first difference position
                        tzcnt r8d, r8d                      ; r8d = first '\0' position

                        cmp eax, r8d
                        jae .found

                        vzeroupper
                        jmp .nextNode

.found:
                        vzeroupper
                        mov rax, rcx
                        ret
