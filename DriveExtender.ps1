###########################################################################################################
#                                                                                                          #
# This Project is Developed by Rajkumar Achanta (achantarajkumar@hotmail.com).                             #
#                                                                                                          #
# This program is used to Extend the Windows Drives as VM's on any Vcenter.                                #
#                                                                                                          #
# This program requies powershell 5.0 and Powercli to run.                                                 #
#                                                                                                          # 
# This program can be reproduced for your use as per your evenivorment.                                    #
#                                                                                                          #
# This program works in single domain and consider all password are same and WinRM is Open.#
#                                                                                                          #
###########################################################################################################



Import-Module Activedirectory
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
Add-Type -AssemblyName System.Windows.Forms.DataVisualization

#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: 3cb5e444-0af7-47a6-b58a-a544bff30aac
# Source File: \tabcontrol.psf
#------------------------------------------------------------------------


#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------

Function Show-tabcontrol_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$Main_form_1 = New-Object 'System.Windows.Forms.Form'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$Main_form_1_Load={
		
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$Main_form_1.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$Main_form_1.remove_Load($Main_form_1_Load)
			$Main_form_1.remove_Load($Form_StateCorrection_Load)
			$Main_form_1.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null  }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$Main_form_1.SuspendLayout()

	#
	# Main_form_1
	#
	#
    

    #[System.Windows.MessageBox]::Show($args[0])
    
      
          #$Decom_InputForm.ShowDialog()

       

    Disk_Main_form_1

	$Main_form_1.Controls.Add($DISK_inputForm_disk)
	$Main_form_1.AutoScaleDimensions = '6, 13'
	$Main_form_1.AutoScaleMode = 'Font'
	$Main_form_1.ClientSize = '1000, 600'
	$Main_form_1.Name = 'Main_form_1'
	$Main_form_1.Text = 'Form'
	$Main_form_1.add_Load($Main_form_1_Load)


	$Main_form_1.ResumeLayout()
	#endregion Generated Form Code


	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $Main_form_1.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$Main_form_1.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$Main_form_1.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $Main_form_1.ShowDialog()

} #End Function




function Disk_Main_form_1()
{
    $global:DISK_inputForm_disk= New-Object System.Windows.Forms.Panel 
    $DISK_inputForm_disk.Text = "Disk Parameter"
    $DISK_inputForm_disk.Size = New-Object System.Drawing.Size(1000, 600) 
    [System.Windows.Forms.Application]::EnableVisualStyles() 

  #handle button click events
    $Main_form_1.KeyPreview = $true
    $Main_form_1.Add_KeyDown(
    {
        if ($_.KeyCode -eq "Enter")  
        {
            $Main_form_1.Close() 
 
        } 
    })
    $Main_form_1.Add_KeyDown(
    {
        if ($_.KeyCode -eq "Escape") 
        {
            $Main_form_1.Close() 
 
        } 
    
    })
     
    #create OK button
    $DISK_OK_inputForm_disk          = New-Object System.Windows.Forms.Button
    $DISK_OK_inputForm_disk.Size     = New-Object System.Drawing.Size(75, 30)
    $DISK_OK_inputForm_disk.Location = New-Object System.Drawing.Size(250,500  )
    $DISK_OK_inputForm_disk.Text     = "OK" 
    $DISK_ok_inputForm_disk.Add_Click(
    {
        $Main_form_1.DialogResult = [System.Windows.Forms.DialogResult]::OK
       
    })
    $Main_form_1.Controls.Add($DISK_OK_inputForm_disk)
    $Main_form_1.AcceptButton = $DISK_OK_inputForm_disk
#create Cancel button
    $DISK_cancelButton_disk          = New-Object System.Windows.Forms.Button 
    $DISK_cancelButton_disk.Size     = New-Object System.Drawing.Size(75,30)
    $DISK_cancelButton_disk.Location = New-Object System.Drawing.Size(325,500  )
    $DISK_cancelButton_disk.Text     = "Cancel"
    $DISK_inputForm_disk.Controls.Add($DISK_cancelButton_disk)
 $Main_form_1.CancelButton = $DISK_cancelButton_disk 

#create Refresh button
    $DISK_RefreshButton_disk          = New-Object System.Windows.Forms.Button 
    $DISK_RefreshButton_disk.Size     = New-Object System.Drawing.Size(75,30)
    $DISK_RefreshButton_disk.Location = New-Object System.Drawing.Size(400,500  )
    $DISK_RefreshButton_disk.Text     = "Color Code"
    $DISK_inputForm_disk.Controls.Add($DISK_RefreshButton_disk)
    $DISK_RefreshButton_disk.Add_Click(
      {
         
         $val_disk=Refresh_Grid_check
         
    })


    #create label
$objLabel_SRVName_Disk          = New-Object System.Windows.Forms.Label
$objLabel_SRVName_Disk.Location = New-Object System.Drawing.Size(50,  50)
$objLabel_SRVName_Disk.Size     = New-Object System.Drawing.Size(100, 20)
$objLabel_SRVName_Disk.Text     = "Server Name" +":"
$DISK_inputForm_disk.Controls.Add($objLabel_SRVName_Disk)
 #create TextBox
$global:objTextBox_SRVName_Disk          = New-Object System.Windows.Forms.TextBox 
$objTextBox_SRVName_Disk.Location = New-Object System.Drawing.Size(150,  50)
$objTextBox_SRVName_Disk.Size     = New-Object System.Drawing.Size(200, 20) 
$DISK_inputForm_disk.Controls.Add($objTextBox_SRVName_Disk)

$global:objTextBox_VCName_Disk          = New-Object System.Windows.Forms.TextBox 
$objTextBox_VCName_Disk.Location = New-Object System.Drawing.Size(150,  80)
$objTextBox_VCName_Disk.Size     = New-Object System.Drawing.Size(200, 20) 
$DISK_inputForm_disk.Controls.Add($objTextBox_VCName_Disk)

 
$objButton_VName_Disk          = New-Object System.Windows.Forms.Button 
$objButton_VName_Disk.Location = New-Object System.Drawing.Size(380,  50)
$objButton_VName_Disk.Size     = New-Object System.Drawing.Size(200, 20) 
$objButton_VName_Disk.Text     = "Get Data" 
$DISK_inputForm_disk.Controls.Add($objButton_VName_Disk)


    $objButton_VName_Disk.Add_Click(
    {
      
    if ($objTextBox_SRVName_Disk.Text -like $null)
        {
        [System.Windows.MessageBox]::Show("Enter The Server Name")   
    }elseif ($objTextBox_VCName_Disk.Text -like $null)
    {
        [System.Windows.MessageBox]::Show("Enter The Vcenter details")   
    }else
    {
    objButton_VCName_Add_Click        
    }
    })
    
 
$objButton_VCName_Disk          = New-Object System.Windows.Forms.Button 
$objButton_VCName_Disk.Location = New-Object System.Drawing.Size(300, 80)
$objButton_VCName_Disk.Size     = New-Object System.Drawing.Size(200, 20) 
$objButton_VCName_Disk.Text     = "Get Data" 
#$DISK_inputForm_disk.Controls.Add($objButton_VCName_Disk)

    
    

    #[System.Windows.MessageBox]::Show($args[0])
    
    $global:dataGrid1 = New-Object System.Windows.Forms.DataGridview

    $System_Drawing_Size = New-Object System.Drawing.Size

    $System_Drawing_Size.Width = 800

    $System_Drawing_Size.Height = 200

    $dataGrid1.Size = $System_Drawing_Size

    $dataGrid1.DataBindings.DefaultDataSourceUpdateMode = 0

    #$dataGrid1.HeaderForeColor = [System.Drawing.Color]::FromArgb(255,0,0,0)

    $dataGrid1.Name = “dataGrid1”

    $dataGrid1.DataMember = “”

    $dataGrid1.TabIndex = 0

    $System_Drawing_Point = New-Object System.Drawing.Point

    $System_Drawing_Point.X = 13

    $System_Drawing_Point.Y = 140

    $dataGrid1.Location = $System_Drawing_Point
    
    $dataGrid1.add_cellMouseClick({gridclick})
    
    $DISK_inputForm_disk.Controls.Add($dataGrid1)
    
      
#          $DISK_inputForm_disk.ShowDialog()

}


function objButton_VCName_Add_Click
    {
    
    $global:cred1 = Get-Credential


    Connect-VIServer $objTextBox_VCName_Disk.Text -Credential $cred1


    if (($objTextBox_VCName_Disk.Text) -like $null)
    {

    [System.Windows.MessageBox]::Show("Enter VCenter Name")   
    
    }else{
    
    $VMDomain_Disk=get-vm $objTextBox_SRVName_Disk.Text | select name, Powerstate, @{N="IPAddress"; E={$_.Guest.IPAddress[0]}}, @{N="DnsName"; E={$_.ExtensionData.Guest.Hostname}}
  
     }
    $grid=Data_grid_Show    
        
    }


Function Data_grid_Show()
{

        #Get_UserName
        $params = @{Class = "Win32_Volume"
                    ComputerName = $VMDomain_Disk.Dnsname
                    Filter = "DriveType='3'"}

        $volumes = Get-WmiObject @params -Credential $cred1
        $Script:procInfo=$volumes |  Select @{Name="ComputerName";Expression={$_.PSComputerName}},`
        @{Name="MountPoints";Expression={$_.Caption}},`
        @{Name="Capacity";Expression={"{0:N2}" -f ($_.Capacity/1GB) + " GB"}},`
        @{Name="UsedSpace";Expression={"{0:N2}" -f (($_.Capacity/1GB) - ($_.FreeSpace/1GB)) + " GB"}},`
        @{Name="FreeSpace";Expression={"{0:N2}" -f ($_.FreeSpace/1GB) + " GB"}},`
        @{Name="Available";Expression={"{0:P2}" -f (($_.FreeSpace/1GB)/($_.Capacity/1GB))}}|`
        Where MountPoints -NotLike '*\\?\Volume*' #| Format-Table -AutoSize



$global:array = New-Object System.Collections.ArrayList


$array.AddRange(@($Script:procInfo))
$datagrid1.DataSource = $array


$Global:DISK_inputForm_disk.Refresh() 

}

Function Refresh_grid_check()
{
#Write-Host $global:array.Count
    if ($global:array.Count -ne 0)
    {
        for ($i=0;$i -lt $global:array.Count;$i++)
        {
        #write-host $global:array[$i].Size
        #Write-Host $global:array[$i].FreeSpace
        $VIndicator= $array[$i].Available 
        if ($VIndicator -le 10)
        {
        $global:datagrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,255,255,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(0,255,0,0)
        }
        elseif ($VIndicator -gt 10 -and  $VIndicator -le 50)
        {
        $global:DataGrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,255,255,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(255,255,0,255)
        }
        else
        {
        $global:DataGrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,0,0,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(255,0,255,0)
        }
        #[System.Windows.MessageBox]::Show($VIndicator)
        }
     
    }
        $Global:DISK_inputForm_disk.Refresh() 
}


Function Refresh_grid_check()
{
#Write-Host $global:array.Count
    if ($global:array.Count -ne 0)
    {
        for ($i=0;$i -lt $global:array.Count;$i++)
        {
        #write-host $global:array[$i].Size
        #Write-Host $global:array[$i].FreeSpace
        #$VIndicator=(100*$global:array[$i].FreeSpace)/$global:array[$i].Size
        $VIndicator= $array[$i].Available 
        if ($VIndicator -le 10)
        {
        $global:datagrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,255,255,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(0,255,0,0)
        }
        elseif ($VIndicator -gt 10 -and  $VIndicator -le 50)
        {
        $global:DataGrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,255,255,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(255,255,0,255)
        }
        else
        {
        $global:DataGrid1.rows[$i].DefaultCellStyle.Forecolor=[System.Drawing.Color]::FromArgb(255,0,0,0)
        $global:datagrid1.rows[$i].DefaultCellStyle.BackColor =[System.Drawing.Color]::FromArgb(255,0,255,0)
        }
        #[System.Windows.MessageBox]::Show($VIndicator)
        }
     
    }
        $Global:DISK_inputForm_disk.Refresh() 
}


 function gridClick(){
$rowIndex = $datagrid1.CurrentRow.Index
$columnIndex = $datagrid1.CurrentCell.ColumnIndex

       $UsedDisk = ($datagrid1.Rows[$rowIndex].Cells[3].value).replace("GB","") 
        $FreeDisk = ($datagrid1.Rows[$rowIndex].Cells[4].value).replace("GB","")
        

    $global:inputForm1               = New-Object System.Windows.Forms.Form 
    $inputForm1.Text          = "Charts"
    $inputForm1.Size          = New-Object System.Drawing.Size(1000, 600) 
    $inputForm1.StartPosition = "CenterScreen"
    [System.Windows.Forms.Application]::EnableVisualStyles()
          VM_data
          dataals

         $inputForm1.Activate()
        $inputForm1.ShowDialog()

}

   

Function dataals()
{
<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    Untitled
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


$VolumeLabel1_Disk                    = New-Object system.Windows.Forms.Label
$VolumeLabel1_Disk.text               = "Volume"
$VolumeLabel1_Disk.AutoSize           = $true
$VolumeLabel1_Disk.width              = 25
$VolumeLabel1_Disk.height             = 10
$VolumeLabel1_Disk.location           = New-Object System.Drawing.Point(0,37)
$VolumeLabel1_Disk.Font               = 'Microsoft Sans Serif,10'

$VoulmeLable1_Disk                    = New-Object system.Windows.Forms.Label
$VoulmeLable1_Disk.text               = "label"
$VoulmeLable1_Disk.AutoSize           = $true
$VoulmeLable1_Disk.width              = 25
$VoulmeLable1_Disk.height             = 10
$VoulmeLable1_Disk.location           = New-Object System.Drawing.Point(170,41)
$VoulmeLable1_Disk.Font               = 'Microsoft Sans Serif,10'

$usedLabel1_Disk                      = New-Object system.Windows.Forms.Label
$usedLabel1_Disk.text                 = "label"
$usedLabel1_Disk.AutoSize             = $true
$usedLabel1_Disk.width                = 25
$usedLabel1_Disk.height               = 10
$usedLabel1_Disk.location             = New-Object System.Drawing.Point(170,96)
$usedLabel1_Disk.Font                 = 'Microsoft Sans Serif,10'

$CapLabel3_Disk                       = New-Object system.Windows.Forms.Label
$CapLabel3_Disk.text                  = "Capacity"
$CapLabel3_Disk.AutoSize              = $true
$CapLabel3_Disk.width                 = 25
$CapLabel3_Disk.height                = 10
$CapLabel3_Disk.location              = New-Object System.Drawing.Point(0,65)
$CapLabel3_Disk.Font                  = 'Microsoft Sans Serif,10'

$global:CapLabel1_DISK                       = New-Object system.Windows.Forms.Label
$CapLabel1_Disk.text                  = "label"
$CapLabel1_Disk.AutoSize              = $true
$CapLabel1_Disk.width                 = 25
$CapLabel1_Disk.height                = 10
$CapLabel1_Disk.location              = New-Object System.Drawing.Point(170,68)
$CapLabel1_Disk.Font                  = 'Microsoft Sans Serif,10'

$usedLabel1_Disk3                     = New-Object system.Windows.Forms.Label
$usedLabel1_Disk3.text                = "Used Space"
$usedLabel1_Disk3.AutoSize            = $true
$usedLabel1_Disk3.width               = 25
$usedLabel1_Disk3.height              = 10
$usedLabel1_Disk3.location            = New-Object System.Drawing.Point(0,94)
$usedLabel1_Disk3.Font                = 'Microsoft Sans Serif,10'

$FreeLabel3_Disk                      = New-Object system.Windows.Forms.Label
$FreeLabel3_Disk.text                 = "Free Space"
$FreeLabel3_Disk.AutoSize             = $true
$FreeLabel3_Disk.width                = 25
$FreeLabel3_Disk.height               = 10
$FreeLabel3_Disk.location             = New-Object System.Drawing.Point(0,123)
$FreeLabel3_Disk.Font                 = 'Microsoft Sans Serif,10'

$FreeLabel1_Disk                      = New-Object system.Windows.Forms.Label
$FreeLabel1_Disk.text                 = "label"
$FreeLabel1_Disk.AutoSize             = $true
$FreeLabel1_Disk.width                = 25
$FreeLabel1_Disk.height               = 10
$FreeLabel1_Disk.location             = New-Object System.Drawing.Point(170,124)
$FreeLabel1_Disk.Font                 = 'Microsoft Sans Serif,10'

$AvailableLabel3_Disk                 = New-Object system.Windows.Forms.Label
$AvailableLabel3_Disk.text            = "Available %"
$AvailableLabel3_Disk.AutoSize        = $true
$AvailableLabel3_Disk.width           = 25
$AvailableLabel3_Disk.height          = 10
$AvailableLabel3_Disk.location        = New-Object System.Drawing.Point(0,154)
$AvailableLabel3_Disk.Font            = 'Microsoft Sans Serif,10'

$AvailableLabel1_Disk                 = New-Object system.Windows.Forms.Label
$AvailableLabel1_Disk.text            = "label"
$AvailableLabel1_Disk.AutoSize        = $true
$AvailableLabel1_Disk.width           = 25
$AvailableLabel1_Disk.height          = 10
$AvailableLabel1_Disk.location        = New-Object System.Drawing.Point(170,154)
$AvailableLabel1_Disk.Font            = 'Microsoft Sans Serif,10'

$DatastoreLabel3_Disk                 = New-Object system.Windows.Forms.Label
$DatastoreLabel3_Disk.text            = "Datastore Capacity"
$DatastoreLabel3_Disk.AutoSize        = $true
$DatastoreLabel3_Disk.width           = 25
$DatastoreLabel3_Disk.height          = 10
$DatastoreLabel3_Disk.location        = New-Object System.Drawing.Point(0,188)
$DatastoreLabel3_Disk.Font            = 'Microsoft Sans Serif,10'

$DatastoreCapLabel1_Disk              = New-Object system.Windows.Forms.Label
$DatastoreCapLabel1_Disk.text         = "label"
$DatastoreCapLabel1_Disk.AutoSize     = $true
$DatastoreCapLabel1_Disk.width        = 25
$DatastoreCapLabel1_Disk.height       = 10
$DatastoreCapLabel1_Disk.location     = New-Object System.Drawing.Point(170,187)
$DatastoreCapLabel1_Disk.Font         = 'Microsoft Sans Serif,10'

$DatastoreFreeLabel1_Disk             = New-Object system.Windows.Forms.Label
$DatastoreFreeLabel1_Disk.text        = "DataStore FreeSpace"
$DatastoreFreeLabel1_Disk.AutoSize    = $true
$DatastoreFreeLabel1_Disk.width       = 25
$DatastoreFreeLabel1_Disk.height      = 10
$DatastoreFreeLabel1_Disk.location    = New-Object System.Drawing.Point(0,225)
$DatastoreFreeLabel1_Disk.Font        = 'Microsoft Sans Serif,10'

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "label"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(170,224)
$Label1.Font                     = 'Microsoft Sans Serif,10'

$inputForm1.controls.AddRange(@($VolumeLabel1_Disk,$VoulmeLable1_Disk,$usedLabel1_Disk,$CapLabel3_Disk,$CapLabel1_Disk,$usedLabel1_Disk3,$FreeLabel3_Disk,$FreeLabel1_Disk,$AvailableLabel3_Disk,$AvailableLabel1_Disk,$DatastoreLabel3_Disk,$DatastoreCapLabel1_Disk,$DatastoreFreeLabel1_Disk,$Label1))

$VoulmeLable1_Disk.Text = ($datagrid1.Rows[$rowIndex].Cells[1].value)
$CapLabel1_Disk.Text = ($datagrid1.Rows[$rowIndex].Cells[2].value)
$usedLabel1_Disk.Text = ($datagrid1.Rows[$rowIndex].Cells[3].value)
$FreeLabel1_Disk.Text=($datagrid1.Rows[$rowIndex].Cells[4].value)
$AvailableLabel1_Disk.Text=($datagrid1.Rows[$rowIndex].Cells[5].value)
$DatastoreCapLabel1_Disk.Text= $global:datastore_Wr.CapacityGB
$Label1.Text =  $global:datastore_Wr.FreeSpaceGB


$global:INC_TextBox1                        = New-Object system.Windows.Forms.TextBox
$INC_TextBox1.multiline              = $false
$INC_TextBox1.width                  = 100
$INC_TextBox1.height                 = 20
$INC_TextBox1.location               = New-Object System.Drawing.Point(500,12)
$INC_TextBox1.Font                   = 'Microsoft Sans Serif,10'

$INC_Button1                         = New-Object system.Windows.Forms.Button
$INC_Button1.text                    = "Extend"
$INC_Button1.width                   = 60
$INC_Button1.height                  = 30
$INC_Button1.location                = New-Object System.Drawing.Point(600,7)
$INC_Button1.Font                    = 'Microsoft Sans Serif,10'

$inputForm1.controls.AddRange(@($INC_TextBox1,$INC_Button1))

$INC_Button1.Add_Click({ Ext_Disk })

}

Function Ext_disk
{

$GVM1=Get-VM -Name $objTextBox_SRVName_Disk.Text
#Write-Host [int]$CapLabel1_Disk.text
#Write-Host [int]$INC_textbox1.Text

 $INC_textbox1.enabled =$false
$Test_size = [Math]::Ceiling($CapLabel1_Disk.text.replace("GB","") )+ [int]$INC_textbox1.Text.replace("GB","")
Write-Host $Test_size
#Write-Host $objTextBox_SRVName_Disk.Text
#Write-host $OSvhddmatch.vmHardDiskName
Write-Host $OSvhddmatch.vmHardDiskName
Get-HardDisk -VM $objTextBox_SRVName_Disk.Text | where {$_.Name -eq ($OSvhddmatch.vmHardDiskName)} | Set-HardDisk -CapacityGB $Test_size -ResizeGuestPartition -Confirm:$false

$diskLabel=$RemVMOut[1]

#Creation of Disk check invoke-vmscript Scriptblock
$Skript1= @'

foreach($disk in Get-Disk) {
Update-Disk -Number $disk.Number
$Partition = Get-Partition -DiskNumber $disk.number
$MaxSize = (Get-PartitionSupportedSize –DiskNumber $Partition.DiskNumber –PartitionNumber $Partition.length).SizeMax
log "Expanding Partition from '$($Partition.size/1GB) GB' to '$($MaxSize/1GB) GB'" Green $LogFile

Resize-Partition –DiskNumber $Partition.DiskNumber –PartitionNumber $Partition.length -Size $MaxSize
}
 
'@

$Skript1 = $Skript1.Replace('$diskLabel=""',"`$diskLabel=`"$($RemVMOut[1])`"")


        $result1 = ((Invoke-VMScript  -VM $GVM1 -Scripttype powershell -ScriptText $Skript1 -Guestuser $Global:Cred1.UserName -Guestpassword $Global:Cred1.Password -WarningAction SilentlyContinue ).ScriptOutput).ToString().split("{,}")
    

    
    
}

 Function VM_data
 {

 $vmname2=$datagrid1.Rows[$rowIndex].Cells[0].value
 $vmname1=$VMDomain_Disk.Dnsname
 $volume1=$datagrid1.Rows[$rowIndex].Cells[1].value
 $vCenters = $objTextBox_VCName_Disk.Text


#Add-PSSnapin VMware.VimAutomation.Core
 # Add-PSSnapin VMware.DeployAutomation
Import-Module -Name VMware.PowerCLI
Import-Module VMware.VimAutomation.Core
Import-Module VMware.DeployAutomation
set-powercliconfiguration -defaultVIServerMode Multiple -Scope ([VMware.VimAutomation.ViCore.Types.V1.ConfigurationScope]::Session) -Confirm:$false | out-null

#Connect-VIServer -Server $vCenters | Out-Null
####################################################################################################################################################
$vmObj = Get-View -ViewType VirtualMachine -Filter @{'Name'="$($vmname2)";'Runtime.PowerState'='PoweredOn'}


$global:GVM = Get-VIObjectByVIView -VIView $vmObj
 
#######Build Invoke-VMScript for remote execution#######
$RemVolLabel =$Volume1              
#Creation of Disk check invoke-vmscript Scriptblock
$Skript= @'
[string]$RemVolLabel=""
#Get Disk ID with diskpart
[object]$RemDiskp = "sel vol $($RemVolLabel)","Detail volume" | diskpart.exe;
$RemDiskp = [system.String]::Join(" ", $RemDiskp);
[int]$pos = $RemDiskp.IndexOf("* Disk ");
[string]$RemDiskID = ($RemDiskp.Substring($pos+1).Split(' ')[2]) -replace("[^`\d]");

#Check if disk is VMware Virtual disk. If not, exit script
$RemW32Diskdrive = (get-wmiobject win32_diskdrive) | where {$_.Index -eq $RemDiskID};
[string]$RemDiskMod = $RemW32Diskdrive.Model.Substring(0,14);
If (!($RemDiskMod -eq "VMware Virtual")) {exit};


#Get Partition Standard (GPT or MBR)
[string]$RemPartStd = ((get-wmiobject win32_diskpartition | where {$_.DiskIndex -eq $RemDiskID}) | select -expand type);
$RemPartStd = $RemPartStd.substring(0,3);
If ($RemPartStd -eq "GPT") {$RemPartStdResult = "GPT"} 
else {$RemPartStdResult = "MBR"};

#Get Disk SN
###############################
#Check if mountpoint (true = mountpoint)
$RemDevice = $RemVolLabel.trim('\')
$RemMountCheck = If(Get-WmiObject Win32_LogicalDisk | where-object { $_.DeviceID -eq $RemDevice }) {$RemMountResult=$false} else {$RemMountResult=$true}

#If no Mountpoint (MBR and GPT)
If (!($RemMountResult)){$Output=$RemVolLabel+","+$RemDiskID+","+$RemW32Diskdrive.SerialNumber+","+$RemW32Diskdrive.Size+","+$RemPartStdResult+","+$RemDiskMod;$Output}

#If Mountpoint [GPT]
If (($RemMountResult) -and ($RemPartStdResult -eq "GPT")) {
[string]$RemPhysDriveID="`\`\.`\PHYSICALDRIVE"+$RemDiskID;
$RemMntGPT= Get-Wmiobject win32_diskdrive | where { $_.DeviceID -eq $RemPhysDriveID};
$Output = $RemVolLabel + "," + $RemMntGPT.Index + "," + $RemMntGPT.Serialnumber + "," + $RemMntGPT.Size + ","+$RemPartStdResult+"," + $RemMntGPT.Model.Substring(0,20);$Output}

#If Mountpoint [MBR]
If (( $RemMountResult ) -and ( $RemPartStdResult -eq "MBR" )) {
If (!($RemVolLabel -match '.+?\\$')) {$RemVolLabel = $RemVolLabel + '\'}
$source = [regex]::escape($RemVolLabel)
$RemVolDevID = (Get-WmiObject -Query "SELECT * FROM Win32_Volume WHERE Name='$source'").DeviceID.TrimEnd("`\")
$trim = ([string]($RemVolDevID).substring(1)).Replace("?","??")
$key_path = "HKLM:`\SYSTEM`\MountedDevices"
$1 = (Get-ItemProperty -Path $key_path).$trim
$D1=[System.Convert]::ToString($($1)[3],16)
$D2=[System.Convert]::ToString($($1)[2],16)
$D3=[System.Convert]::ToString($($1)[1],16)
$D4=[System.Convert]::ToString($($1)[0],16)
$DOut = $D1+$D2+$D3+$D4
[string]$3 = [convert]::toint64("$DOut",16)
$MBR = ((gwmi win32_diskdrive) | where {$_.Signature -eq $($3)})
$Output = $RemVolLabel + "," + $MBR.Index + "," + $MBR.Serialnumber + "," + $MBR.Size + ","+$RemPartStdResult+"," +$RemDiskMod
$Output
}
'@ #Script End

$Skript = $Skript.Replace('$RemVolLabel=""',"`$RemVolLabel=`"$($Volume1)`"")
#Write-Host $GVM
#Write-Host $login1[0]
#Write-Host $login1[1]

$global:RemVMOut = ((Invoke-VMScript  -VM $GVM -Scripttype powershell -ScriptText $Skript -Guestuser $global:cred1.UserName -Guestpassword $global:cred1.Password -WarningAction SilentlyContinue ).ScriptOutput).ToString().split("{,}")
       
$VMHDDs = $GVM | Get-HardDisk  
#Datacenter and virtual disk manager 
$vmDatacenterView = $GVM | Get-Datacenter | Get-View 
$virtualDiskManager = Get-View -Id VirtualDiskManager-virtualDiskManager 

#Create Hash Table

$vmresults = @()  
foreach ($vmHardDisk in $VMHDDs)  
{  
  [string]$string = $vmHardDisk.Filename
  $vmHardDiskUuid = ($vmHardDisk.ExtensionData.Backing.Uuid | ForEach-Object {$_.replace(' ','').replace('-','')})
  $vmresult = "" | Select-Object vmName,vmHardDiskVmdk,vmHardDiskName,vmHardDiskSize,vmHardDiskUuid,vmHardDiskName1,vmHardDiskVmdkDB
  $vmresult.vmName = $vmName2
  $vmresult.vmHardDiskVmdk = $vmHardDisk.filename.split(']')[1].trim()
  $vmresult.vmHardDiskVmdkDB = $vmHardDisk.filename.split(']')[0].trimstart("[")  
  $vmresult.vmHardDiskName = $vmHardDisk.Name
  $vmresult.vmHardDiskSize = $vmHardDisk.CapacityGB
  $vmresult.vmHardDiskUuid = $vmHardDiskUuid
  $vmresult.vmHardDiskName1 = $vmHardDisk.Filename    
  $vmresults += $vmresult  
}
$vmresults | out-null
#Match disk
$global:OSvhddmatch = $vmresults | where { $_.vmHardDiskUuid -eq $RemVMOut[2] }

 $global:datastore_Wr = Get-Datastore -name $OSvhddmatch.vmHardDiskVmdkDB 

 
#Disconnect-VIServer * -Confirm:$false
}




Show-tabcontrol_psf|Out-Null
#Call the form




