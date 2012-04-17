.class public abstract Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEmailServiceCallback.java"

# interfaces
.implements Lcom/android/emailcommon/service/IEmailServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/service/IEmailServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/emailcommon/service/IEmailServiceCallback;
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
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/emailcommon/service/IEmailServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 14
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

    .line 221
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, _arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxListStatus(JII)V

    .line 55
    const/4 v1, 0x1

    goto :goto_0

    .line 59
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_2
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 65
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 66
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_3
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 75
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 77
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 79
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, _arg3:I
    move-object v1, p0

    .line 80
    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 85
    .end local v2           #_arg0:J
    .end local v4           #_arg1:J
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_4
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 93
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7       #_arg3:I
    move-object v8, p0

    move-wide v9, v2

    move-object v11, v4

    move v12, v6

    move v13, v7

    .line 94
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMessageStatus(JLjava/lang/String;II)V

    .line 95
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    .end local v2           #_arg0:J
    .end local v4           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_5
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 103
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, _arg1:I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveItemStatus(JI)V

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 109
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    :sswitch_6
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 113
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 115
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 117
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .local v7, _arg3:Landroid/os/Bundle;
    :goto_1
    move-object v8, p0

    move-wide v9, v2

    move v11, v4

    move v12, v6

    move-object v13, v7

    .line 123
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 124
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v7           #_arg3:Landroid/os/Bundle;
    :cond_0
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/os/Bundle;
    goto :goto_1

    .line 128
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:Landroid/os/Bundle;
    :sswitch_7
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 134
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 135
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->folderCommandStatus(IJI)V

    .line 136
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 140
    .end local v2           #_arg0:I
    .end local v4           #_arg1:J
    .end local v6           #_arg2:I
    :sswitch_8
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 146
    .local v4, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 147
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->emptyTrashStatus(JII)V

    .line 148
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 152
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_9
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 156
    .restart local v2       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 159
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadMoreStatus(JII)V

    .line 160
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 164
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_a
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 168
    .local v2, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 172
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 173
    .local v7, _arg3:I
    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->moveConvAlwaysStatus([BIII)V

    .line 174
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 178
    .end local v2           #_arg0:[B
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    .end local v7           #_arg3:I
    :sswitch_b
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 182
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 184
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 185
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->setDeviceInfoStatus(JII)V

    .line 186
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_c
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->deviceInfoStatus(I)V

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg0:I
    :sswitch_d
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 202
    .local v2, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .restart local v4       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .restart local v6       #_arg2:I
    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->refreshIRMTemplatesStatus(JII)V

    .line 206
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 210
    .end local v2           #_arg0:J
    .end local v4           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_e
    const-string v1, "com.android.emailcommon.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 214
    .local v2, _arg0:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 216
    .local v4, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .local v12, _arg2:J
    move-object v8, p0

    move v9, v2

    move-wide v10, v4

    .line 217
    invoke-virtual/range {v8 .. v13}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2           #_arg0:Z
    .end local v4           #_arg1:J
    .end local v12           #_arg2:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
