.class Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mLogLabel:Ljava/lang/String;

.field private final mPreviousVisiblePanes:I

.field private final mViewsGone:[Landroid/view/View;

.field private final mViewsInvisible:[Landroid/view/View;

.field private final mViewsVisible:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "logLabel"
    .parameter "viewsVisible"
    .parameter "viewsInvisible"
    .parameter "viewsGone"
    .parameter "previousVisiblePanes"

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mLogLabel:Ljava/lang/String;

    .line 1194
    iput-object p3, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .line 1195
    iput-object p4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .line 1196
    iput-object p5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    .line 1197
    iput p6, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    .line 1198
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1204
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1207
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 1208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    .line 1209
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1252
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 1259
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    const/4 v5, 0x0

    #setter for: Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z
    invoke-static {v4, v5}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    .line 1260
    iget-boolean v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    if-eqz v4, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1263
    :cond_0
    const-string v4, "end"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1265
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1267
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1268
    .restart local v3       #v:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1270
    .end local v3           #v:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 1271
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 1272
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->makeMessageView()V

    .line 1274
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChangedAfterAni()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1248
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1216
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #setter for: Lcom/android/email/activity/ThreePaneLayout;->mAnimationStarted:Z
    invoke-static {v4, v6}, Lcom/android/email/activity/ThreePaneLayout;->access$302(Lcom/android/email/activity/ThreePaneLayout;Z)Z

    .line 1217
    const-string v4, "start"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1219
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    .end local v3           #v:Landroid/view/View;
    :cond_0
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-nez v4, :cond_2

    .line 1223
    invoke-static {v7}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1224
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1225
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #calls: Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1226
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginListLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    .line 1243
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 1244
    return-void

    .line 1229
    :cond_2
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1230
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1231
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1232
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #calls: Lcom/android/email/activity/ThreePaneLayout;->isLandscape()Z
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$700(Lcom/android/email/activity/ThreePaneLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1233
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchMarginViewLand()I

    move-result v4

    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_1

    .line 1235
    :cond_3
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 1236
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1237
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    .line 1238
    invoke-static {v7}, Lcom/android/email/activity/MessageListXL;->setSearchFrameLayout(I)V

    goto :goto_1

    .line 1239
    :cond_4
    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$400()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1240
    invoke-static {v6}, Lcom/android/email/activity/ThreePaneLayout;->access$502(Z)Z

    .line 1241
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$600(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    invoke-static {}, Lcom/android/email/activity/ThreePaneLayout;->access$500()Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onLookChanged(Z)V

    goto :goto_1
.end method
