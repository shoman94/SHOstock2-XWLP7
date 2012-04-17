.class public abstract Lcom/seven/Z7/common/IZ7Settings$Stub;
.super Landroid/os/Binder;
.source "IZ7Settings.java"

# interfaces
.implements Lcom/seven/Z7/common/IZ7Settings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/IZ7Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/IZ7Settings$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p0, p0, v0}, Lcom/seven/Z7/common/IZ7Settings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 52
    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/util/Map;
    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/common/IZ7Settings$Stub;->updateSettings(ILjava/util/Map;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/util/Map;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :sswitch_2
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    sget-object v5, Lcom/seven/Z7/common/Z7Preference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/Z7/common/Z7Preference;

    .line 69
    .local v1, _arg1:Lcom/seven/Z7/common/Z7Preference;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/common/IZ7Settings$Stub;->setPreference(ILcom/seven/Z7/common/Z7Preference;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    .end local v1           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/seven/Z7/common/Z7Preference;
    goto :goto_1

    .line 75
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    :sswitch_3
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/common/IZ7Settings$Stub;->removePreference(ILjava/lang/String;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    sget-object v5, Lcom/seven/Z7/common/Z7Preference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/seven/Z7/common/Z7Preference;

    .line 96
    .local v1, _arg1:Lcom/seven/Z7/common/Z7Preference;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/common/IZ7Settings$Stub;->getPreference(ILcom/seven/Z7/common/Z7Preference;)Lcom/seven/Z7/common/Z7Preference;

    move-result-object v2

    .line 97
    .local v2, _result:Lcom/seven/Z7/common/Z7Preference;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v2, p3, v4}, Lcom/seven/Z7/common/Z7Preference;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 94
    .end local v1           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    .end local v2           #_result:Lcom/seven/Z7/common/Z7Preference;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/seven/Z7/common/Z7Preference;
    goto :goto_2

    .line 103
    .restart local v2       #_result:Lcom/seven/Z7/common/Z7Preference;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/seven/Z7/common/Z7Preference;
    .end local v2           #_result:Lcom/seven/Z7/common/Z7Preference;
    :sswitch_5
    const-string v5, "com.seven.Z7.common.IZ7Settings"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/seven/Z7/common/IZ7Settings$Stub;->getPreferences(I)Ljava/util/Map;

    move-result-object v2

    .line 113
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
