# About the Script
* Using the ping method, when doing ping to any host

# Description of the python file

| File name                      | Description |
| ------------------------------ | ----------- |
| list_ping         | ping IP in a list, and check network is up or not |
| ping_check_status | ping hotcode IP  and check network is up or not   |
| ping_with_output | ping IP in loop (2 cycle), and export ping        |


## How to work with the script:
1. **list_ping.py**

> - ping and check HOST  IP from list, so you can change the HOST IP
> - will check network is up or down
* output
    ```
    #list_ping.py
    Ping 8.8.8.8 (使用 32 位元組的資料):
    回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115
    
    8.8.8.8 的 Ping 統計資料:
        封包: 已傳送 = 1，已收到 = 1, 已遺失 = 0 (0% 遺失)，
    大約的來回時間 (毫秒):
        最小值 = 8ms，最大值 = 8ms，平均 = 8ms
    ###########8.8.8.8, is up ##############
    
    Ping 192.168.1.50 (使用 32 位元組的資料):
    要求等候逾時。
    
    192.168.1.50 的 Ping 統計資料:
        封包: 已傳送 = 1，已收到 = 0, 已遺失 = 1 (100% 遺失)，
    ###########192.168.1.50, is down ############## 
    ```

**2 ping_check_status.py**

- ping and check IP Host is up or down  
- FW is been hotcode 

```
#ping_check_status.py
Ping 8.8.8.8 (使用 32 位元組的資料):
回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115
回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115
回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115
回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115
回覆自 8.8.8.8: 位元組=32 時間=8ms TTL=115

8.8.8.8 的 Ping 統計資料:
    封包: 已傳送 = 5，已收到 = 5, 已遺失 = 0 (0% 遺失)，
大約的來回時間 (毫秒):
    最小值 = 8ms，最大值 = 8ms，平均 = 8ms
8.8.8.8 is up!
```

**3 ping_with_outputboth code is the same just i put in function method**

- User enter IP host, and will ping host
- Run two cycle and check pass or fail 

```
#ping_with_output.py
enter your ip address(host):8.8.8.8
#################start################
###result:PASS### 0
==============================
###result:PASS### 1
==============================
#################end################
```

