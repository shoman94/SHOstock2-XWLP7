.class public abstract Lcom/android/emailcommon/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.emailcommon.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 394
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    .line 61
    .local v8, _arg5:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    .local v9, _arg6:Z
    :goto_2
    move-object/from16 v2, p0

    .line 62
    invoke-virtual/range {v2 .. v9}, Lcom/android/emailcommon/service/IEmailService$Stub;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;

    move-result-object v33

    .line 63
    .local v33, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v33, :cond_2

    .line 65
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v2, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    :goto_3
    const/4 v2, 0x1

    goto :goto_0

    .line 59
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 61
    .restart local v8       #_arg5:Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 69
    .restart local v9       #_arg6:Z
    .restart local v33       #_result:Landroid/os/Bundle;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 75
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Ljava/lang/String;
    .end local v7           #_arg4:I
    .end local v8           #_arg5:Z
    .end local v9           #_arg6:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :sswitch_2
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 79
    .local v11, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    .line 80
    .local v4, _arg1:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->startSync(JZ)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 79
    .end local v4           #_arg1:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 85
    .end local v11           #_arg0:J
    :sswitch_3
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 88
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->stopSync(J)V

    .line 89
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 93
    .end local v11           #_arg0:J
    :sswitch_4
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 96
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMore(J)V

    .line 97
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v11           #_arg0:J
    :sswitch_5
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 105
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .line 106
    .restart local v4       #_arg1:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadAttachment(JZ)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 105
    .end local v4           #_arg1:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 111
    .end local v11           #_arg0:J
    :sswitch_6
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 114
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->updateFolderList(J)V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 119
    .end local v11           #_arg0:J
    :sswitch_7
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 123
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v33

    .line 125
    .local v33, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v33, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 126
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 131
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v33           #_result:Z
    :sswitch_8
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 135
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v33

    .line 137
    .restart local v33       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v33, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 138
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 143
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v33           #_result:Z
    :sswitch_9
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 147
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 150
    .restart local v5       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4, v5}, Lcom/android/emailcommon/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v33

    .line 151
    .restart local v33       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v33, :cond_7

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 152
    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    .line 157
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v33           #_result:Z
    :sswitch_a
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 160
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->getAliasFromMap(J)Ljava/lang/String;

    move-result-object v33

    .line 161
    .local v33, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 167
    .end local v11           #_arg0:J
    .end local v33           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v3

    .line 170
    .local v3, _arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3           #_arg0:Lcom/android/emailcommon/service/IEmailServiceCallback;
    :sswitch_c
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 179
    .local v3, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/service/IEmailService$Stub;->setLogging(I)V

    .line 180
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 184
    .end local v3           #_arg0:I
    :sswitch_d
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 187
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->hostChanged(J)V

    .line 188
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v11           #_arg0:J
    :sswitch_e
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 198
    .restart local v4       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .restart local v5       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v6, 0x1

    .line 201
    .local v6, _arg3:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v33

    .line 202
    .local v33, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v33, :cond_9

    .line 204
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v2, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 200
    .end local v6           #_arg3:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :cond_8
    const/4 v6, 0x0

    goto :goto_9

    .line 208
    .restart local v6       #_arg3:Z
    .restart local v33       #_result:Landroid/os/Bundle;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 214
    .end local v3           #_arg0:Ljava/lang/String;
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v5           #_arg2:Ljava/lang/String;
    .end local v6           #_arg3:Z
    .end local v33           #_result:Landroid/os/Bundle;
    :sswitch_f
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 218
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .local v4, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 220
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 224
    .end local v4           #_arg1:I
    .end local v11           #_arg0:J
    :sswitch_10
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 228
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 230
    .local v13, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    move-object/from16 v10, p0

    move v15, v5

    .line 231
    invoke-virtual/range {v10 .. v15}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMeetingEditedResponse(JJI)V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 236
    .end local v5           #_arg2:I
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_11
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 240
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 241
    .restart local v13       #_arg1:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/android/emailcommon/service/IEmailService$Stub;->moveMessage(JJ)V

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 246
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_12
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 249
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->deleteAccountPIMData(J)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 255
    .end local v11           #_arg0:J
    :sswitch_13
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->getApiLevel()I

    move-result v33

    .line 257
    .local v33, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 263
    .end local v33           #_result:I
    :sswitch_14
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 267
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, _arg2:J
    move-object/from16 v15, p0

    move-wide/from16 v16, v11

    move-object/from16 v18, v4

    .line 270
    invoke-virtual/range {v15 .. v20}, Lcom/android/emailcommon/service/IEmailService$Stub;->folderCreate(JLjava/lang/String;J)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    .end local v19           #_arg2:J
    :sswitch_15
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 279
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->emptyTrash(J)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 285
    .end local v11           #_arg0:J
    :sswitch_16
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 289
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 290
    .restart local v4       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendRecoveryPassword(JLjava/lang/String;)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 296
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v11           #_arg0:J
    :sswitch_17
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 299
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->setDeviceInfo(J)V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 305
    .end local v11           #_arg0:J
    :sswitch_18
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 309
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 311
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 313
    .local v5, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg3:I
    move-object/from16 v10, p0

    move-object v15, v5

    move/from16 v16, v6

    .line 314
    invoke-virtual/range {v10 .. v16}, Lcom/android/emailcommon/service/IEmailService$Stub;->moveConversationAlways(JJ[BI)V

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 320
    .end local v5           #_arg2:[B
    .end local v6           #_arg3:I
    .end local v11           #_arg0:J
    .end local v13           #_arg1:J
    :sswitch_19
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 324
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 325
    sget-object v2, Lcom/android/emailcommon/service/OoODataList;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/service/OoODataList;

    .line 330
    .local v4, _arg1:Lcom/android/emailcommon/service/OoODataList;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v4}, Lcom/android/emailcommon/service/IEmailService$Stub;->OoOffice(JLcom/android/emailcommon/service/OoODataList;)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 328
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OoODataList;
    :cond_a
    const/4 v4, 0x0

    .restart local v4       #_arg1:Lcom/android/emailcommon/service/OoODataList;
    goto :goto_b

    .line 336
    .end local v4           #_arg1:Lcom/android/emailcommon/service/OoODataList;
    .end local v11           #_arg0:J
    :sswitch_1a
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 339
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->changeSmsSettings(J)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 345
    .end local v11           #_arg0:J
    :sswitch_1b
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/emailcommon/service/IEmailService$Stub;->loadMoreCancel()V

    .line 347
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 351
    :sswitch_1c
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    .line 355
    .local v3, _arg0:[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 357
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .restart local v19       #_arg2:J
    move-object/from16 v15, p0

    move-object/from16 v16, v3

    move-wide/from16 v17, v13

    .line 358
    invoke-virtual/range {v15 .. v20}, Lcom/android/emailcommon/service/IEmailService$Stub;->sendMessageCancel([JJJ)V

    .line 359
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 363
    .end local v3           #_arg0:[J
    .end local v13           #_arg1:J
    .end local v19           #_arg2:J
    :sswitch_1d
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 366
    .restart local v11       #_arg0:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/emailcommon/service/IEmailService$Stub;->refreshIRMTemplates(J)V

    .line 367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 372
    .end local v11           #_arg0:J
    :sswitch_1e
    const-string v2, "com.android.emailcommon.service.IEmailService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 376
    .restart local v11       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 378
    .restart local v13       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 380
    .restart local v19       #_arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, _arg7:Ljava/lang/String;
    move-object/from16 v21, p0

    move-wide/from16 v22, v11

    move-wide/from16 v24, v13

    move-wide/from16 v26, v19

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    .line 389
    invoke-virtual/range {v21 .. v32}, Lcom/android/emailcommon/service/IEmailService$Stub;->searchMessage(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
