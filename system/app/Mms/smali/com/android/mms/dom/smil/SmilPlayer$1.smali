.class Lcom/android/mms/dom/smil/SmilPlayer$1;
.super Ljava/lang/Object;
.source "SmilPlayer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilPlayer$1;->this$0:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;->getOffsetTime()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p1, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .end local p1
    check-cast p2, Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/dom/smil/SmilPlayer$1;->compare(Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;Lcom/android/mms/dom/smil/SmilPlayer$TimelineEntry;)I

    move-result v0

    return v0
.end method
