[root@ip-10-1-1-56 ec2-user]# fpga-set-virtual-dip-switch -h
  SYNOPSIS
      fpga-set-virtual-dip-switch [GENERAL OPTIONS] [-h]
      Example: fpga-set-virtual-dip-switch -S 0 -D 0101000011000000
  DESCRIPTION
      Drive the AFI in a given slot with the specified virtual DIP Switches
      A 16 digit value is require: a series of 0 (zeros) and 1 (ones)
      First digit from the right maps to sh_cl_vdip[0]
      For example, a value 0101000011000000
      indicates that sh_cl_vdip[6], [7], [12], and [14] is set/on
  GENERAL OPTIONS
      -S, --fpga-image-slot
          The logical slot number for the FPGA image
          Constraints: Positive integer from 0 to the total slots minus 1.
      -D, --virtual-dip
          A 16 digit bitmap representation of the desired setting for Virtual DIP Switches
          This argument is mandatory and must be 16 digits made of any combinations of
          zeros or ones.
      -h, --help
          Display this help.
      -H, --headers
          Display column headers.
      -V, --version
          Display version number of this program.

---
[root@ip-10-1-1-56 ec2-user]# fpga-get-virtual-dip-switch -h
  SYNOPSIS
      fpga-get-virtual-dip-switch [GENERAL OPTIONS] [-h]
      Example: fpga-get-virtual-dip-switch -S 0
  DESCRIPTION
      Returns the current status of the virtual DIP Switches by
      driven to the AFI. A series of 0 (Zeros) and 1 (ones)
      First digit from the right maps to sh_cl_vdip[0]
      For example, a return value 0000000001000000
      indicates that sh_cl_vdip[6] is set(on)
  GENERAL OPTIONS
      -S, --fpga-image-slot
          The logical slot number for the FPGA image
          Constraints: Positive integer from 0 to the total slots minus 1.
      -h, --help
          Display this help.
      -H, --headers
          Display column headers.
      -V, --version
          Display version number of this program.
