####  申请代理

`POST /api/proxy_member`

**表单参数** :

-   **phone**  - 13524368823
-   **passwd** - xyz$abc133@
-   **openid** - abcdefhg913
-   **code**   - 用户填写的code
  
**响应包体** :

  ```json
  {
         "status" : 1,
         "msg"  : "",
         "data" : null
  }
  ```


#### 获取手机验证码

`GET  /api/phone_code`

**查询参数** :

-  **phone** - 手机号
-  **type**  - 取值reg(注册时)|resetpwd(重置密码时)

**响应包体** :

```json
{
       "status" : 1,
       "msg"  : "",
       "data" : "123456"
}
```


#### 代理登录

`POST /api/proxy_login`

**表单参数** :

 -   **phone**  - 13524368823
 -   **passwd** - xyz$abc133@

**响应包体** :
   
-  **data**  -  21 是用户mid

```json
{
       "status" : 1,
       "msg"  : "",
       "data" : 21,
}
 ```

#### 重置密码

`POST /api/proxy_reset_pwd`

**表单参数** :

 -   **phone**  - 13524368823
 -   **passwd** - xyz$abc133@
 -   **code**   - 123456

**响应包体** :

  ```json
  {
         "status" : 1,
         "msg"  : "",
         "data" : null
  }```

####  代理的用户信息

`GET /api/proxy_member/:mid`

**响应包体** :

- **head_url** -  头像地址
- **cur_cardcnt** - 用户放卡数目
- **mid**         - 用户id
- **phone**       - 用户手机号码

```json
{
       "status" : 1,
       "msg"  : "",
       "data" : {
               "head_url": "http://wx.qq.com/xxxxx",
               "cur_cardcnt" : 10,
               "mid":  12,
               "phone": 18833335555
       }
}
 ```

#### 代理的订单列表

`GET /api/proxy_order_list/:mid`

**响应包体** :

- **o_no**                - 订单编号
- **m_time**              - 订单时间
- **o_amount**            - 订单金额
- **pro_cardcnt**         - 商品数目

```json
 {
        "status" : 1,
        "msg"  : "",
        "data" : {
                "o_no": 1313434343,
                "m_time" : "2017-3-13 13:32:44",
                "o_amount":  1,
                "pro_cardcnt": 100
        }
 }
 ```

#### 代理的赠送列表

`GET /api/proxy_present_list/:mid`

**响应包体** :

- **c_time**              - 赠送时间
- **m_id**                - 受赠人id
- **pro_cardcnt**         - 赠送数目

```json
 {
        "status" : 1,
        "msg"  : "",
        "data" : {
                "c_time" : "2017-3-13 13:32:44",
                "m_id":  1,
                "pro_cardcnt": 100
        }
 }
 ```

####  代理赠送房卡

`POST /api/proxy_present_card`

**请求包体** :

 - **from_mid**   - 赠送人id
 - **to_mid**     - 接受人id
 - **card_cnt**   - 赠送数量
    
```json
  {
     "from_mid" : 1,
     "to_mid"   : 2,
     "card_cnt" : 100
  }
  ```

**响应包体** :

 ```json
 {
         "status" : 1,
         "msg"  : "",
         "data" : null
 }
 ```
