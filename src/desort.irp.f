subroutine desort()
    use iso_c_binding
    implicit none
    integer::i,j,ord,ordh
    integer(C_SIZE_T)::add,addh,deti,dethi,addt

    do i=1,detfound-1
        do j=i+1,detfound
            if(foundaddh(i,3).gt.foundaddh(j,3))then
                dethi = foundaddh(i,1)
                foundaddh(i,1) = foundaddh(j,1)
                foundaddh(j,1) = dethi
                addh = foundaddh(i,2)
                foundaddh(i,2) = foundaddh(j,2)
                foundaddh(j,2) = addh
                ordh = foundaddh(i,3)
                foundaddh(i,3) = foundaddh(j,3)
                foundaddh(j,3) = ordh
            endif
            if(foundadd(i,3).gt.foundadd(j,3))then
                deti = foundadd(i,1)
                foundadd(i,1) = foundadd(j,1)
                foundadd(j,1) = deti
                add = foundadd(i,2)
                foundadd(i,2) = foundadd(j,2)
                foundadd(j,2) = add
                ord = foundadd(i,3)
                foundadd(i,3) = foundadd(j,3)
                foundadd(j,3) = ord
            endif
        enddo
    enddo
end
