.class public Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
.super Ljava/lang/Exception;
.source "EmailProviderWds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/wds/EmailProviderWds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MissingEmailConnectionException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xea65008965495L


# instance fields
.field final synthetic this$0:Lcom/android/email/wds/EmailProviderWds;


# direct methods
.method private constructor <init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;->this$0:Lcom/android/email/wds/EmailProviderWds;

    .line 57
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;Lcom/android/email/wds/EmailProviderWds$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;-><init>(Lcom/android/email/wds/EmailProviderWds;Ljava/lang/String;)V

    return-void
.end method
