#coding=utf-8
import logging
import telnetlib
import time


class TelnetClient():
    def __init__(self,):
        self.tn = telnetlib.Telnet()

    # ����ƹ�{telnet�n���D��
    def login_host(self,host_ip,username,password):
        try:
            # self.tn = telnetlib.Telnet(host_ip,port=23)
            self.tn.open(host_ip,port=23)
        except:
            logging.warning('%s network connection fail'%host_ip)
            return False
        # ����login�X�{���J�Τ�W�A�̦h����10��
        self.tn.read_until(b'Login: ',timeout=1)
        self.tn.write(username.encode('ascii') + b'\n')
        # ����Password�X�{���J�Τ�W�A�̦h����10��
        self.tn.read_until(b'Password: ',timeout=1)
        self.tn.write(password.encode('ascii') + b'\n')
        # ���ɨ��A������^���G�A���A�Ⱥݨ����T���ɶ�
        time.sleep(2)
        # ����n�����G
        # read_very_eager()����쪺�O���O�W��������᥻��������e���Ҧ���X
        command_result = self.tn.read_very_eager().decode('ascii')
        if 'Login incorrect' not in command_result:         
            logging.warning('%slogin success'%host_ip)
            return True
        else:
            logging.warning('%s login fail, username or pwd wrong'%host_ip)
            return False

    # ����ƹ�{����ǹL�Ӫ��R�O�A�ÿ�X����浲�G
    def execute_some_command(self,command):
        # ����R�O
        self.tn.write(command.encode('ascii')+b'\n')
        time.sleep(2)
        # ����R�O���G
        command_result = self.tn.read_very_eager().decode('ascii')
        logging.warning('command result:\n %s' %command_result)

    # �h�Xtelnet
    def logout_host(self):
        self.tn.write(b"exit\n")

if __name__ == '__main__':
    host_ip = '192.168.1.253'
    username = 'root'
    password = 'arrisc4'
    command = 'en'
    telnet_client = TelnetClient()
    # �p�G�n�����G��[True�A�h����R�O�A�M��h�X
    if telnet_client.login_host(host_ip,username,password):
        telnet_client.execute_some_command(command)
        #telnet