.class public final Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
.super Ljava/lang/Object;
.source "PhoneCallDetailsViews.java"


# instance fields
.field public final callIndi:Landroid/widget/ImageView;

.field public final groupCount:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameView:Landroid/widget/TextView;

.field public final numberView:Landroid/widget/TextView;

.field public final timeView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "nameView"
    .parameter "groupCount"
    .parameter "timeView"
    .parameter "numberView"
    .parameter "callIndi"
    .parameter "logType"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    .line 40
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->groupCount:Landroid/widget/TextView;

    .line 41
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->timeView:Landroid/widget/TextView;

    .line 42
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->numberView:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->callIndi:Landroid/widget/ImageView;

    .line 44
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->logType:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .locals 7
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public static fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;
    .locals 7
    .parameter "view"

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    const v1, 0x7f0d007f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d0080

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d0083

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0082

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d0081

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0d007e

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0
.end method
