.class public Lcom/android/mms/data/RecipientIdCache$Entry;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/RecipientIdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public id:J

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "number"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    .line 62
    iput-object p3, p0, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    .line 63
    return-void
.end method
