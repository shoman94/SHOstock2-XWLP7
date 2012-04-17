.class Lcom/android/mms/util/TranslateEngine$TranslateTask;
.super Landroid/os/AsyncTask;
.source "TranslateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/TranslateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/util/TranslateEngine;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/TranslateEngine;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter "handler"
    .parameter "fromString"
    .parameter "fromLanguageKey"
    .parameter "toLanguageKey"

    .prologue
    .line 99
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 100
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    .line 102
    const-string v4, "https://www.googleapis.com/language/translate/v2"

    .line 104
    .local v4, baseRequestParam:Ljava/lang/String;
    const-string v3, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    .line 105
    .local v3, apiKeyParam:Ljava/lang/String;
    const-string v9, ""

    .line 106
    .local v9, srcLangParam:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_0

    const-string v15, "zh"

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 107
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&source="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 108
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&target="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, dstLangParam:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&q="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 113
    .local v10, textToTranslateParam:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    const-string v15, "https://www.googleapis.com/language/translate/v2"

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 114
    .local v14, uriStringBuf:Ljava/lang/StringBuffer;
    const-string v15, "?key=AIzaSyALx0ahRJy7K1yXQcaN13v9C5_IU7RZGL0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v14, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v14, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const/16 v2, 0x7d0

    .line 122
    .local v2, URI_MAX_LENGTH:I
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 123
    .local v13, uriLength:I
    const/16 v15, 0x7d0

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 124
    .local v11, truncatedLength:I
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, truncatedUri:Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v5, data:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 130
    .local v8, msg:Landroid/os/Message;
    :try_start_0
    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v15, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 131
    new-instance v15, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/mms/util/TranslateEngine;->mClient:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v7

    .line 133
    .local v7, ie:Ljava/lang/IllegalArgumentException;
    const-string v15, "transResult"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v15, "error_type"

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 136
    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v15, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private tryAcquireHttpResponseString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    :try_start_0
    const-string v2, "Mms/TranslateEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v4, v4, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 192
    .local v1, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v2, v2, Lcom/android/mms/util/TranslateEngine;->mClient:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->this$0:Lcom/android/mms/util/TranslateEngine;

    iget-object v3, v3, Lcom/android/mms/util/TranslateEngine;->mGetRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v1           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/TranslateEngine"

    const-string v3, "Error acquiring http response string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .parameter "param"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 143
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 144
    .local v6, toString:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, data:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 147
    .local v3, msg:Landroid/os/Message;
    invoke-direct {p0}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->tryAcquireHttpResponseString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, responseBody:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 149
    const-string v9, "transResult"

    invoke-virtual {v0, v9, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v9, "error_type"

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 152
    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 181
    :goto_0
    return-object v9

    .line 158
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v4, object:Lorg/json/JSONObject;
    const-string v9, "data"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 160
    .local v1, dataObject:Lorg/json/JSONObject;
    const-string v9, "translations"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 162
    .local v7, translationArrayObject:Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 164
    .local v8, translationObject:Lorg/json/JSONObject;
    const-string v9, "translatedText"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-static {v6}, Lorg/apache/commons/lang/StringEscapeUtils;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    const-string v9, "Mms/TranslateEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "success to TRANSLATE - translated String = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v9, "transResult"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v9, "error_type"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    .end local v1           #dataObject:Lorg/json/JSONObject;
    .end local v4           #object:Lorg/json/JSONObject;
    .end local v7           #translationArrayObject:Lorg/json/JSONArray;
    .end local v8           #translationObject:Lorg/json/JSONObject;
    :goto_1
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Lorg/json/JSONException;
    :try_start_1
    const-string v9, "transResult"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v9, "error_type"

    const/4 v10, -0x2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    iget-object v9, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 177
    .end local v2           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v9

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 178
    iget-object v10, p0, Lcom/android/mms/util/TranslateEngine$TranslateTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 185
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/mms/util/TranslateEngine$TranslateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    return-void
.end method
