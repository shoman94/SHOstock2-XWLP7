.class public abstract Lcom/android/systemui/statusbar/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static canStatusBarHide:Z

.field public static supportVoice:Z

.field public static useTouchWizGUI:Z


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract animateCollapse()V
.end method

.method protected abstract getStatusBarGravity()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public hideCallOnGoingView()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method protected abstract makeStatusBarView()Landroid/view/View;
.end method

.method public showCallOnGoingView()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public start()V
    .locals 26

    .prologue
    .line 79
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v25

    .line 89
    .local v25, wm:Landroid/view/IWindowManager;
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v23

    .line 109
    .local v23, sb:Landroid/view/View;
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v6}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 110
    .local v6, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v7, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v8, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v4, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 113
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 115
    const/4 v4, 0x7

    new-array v9, v4, [I

    .line 116
    .local v9, switches:[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v10, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 124
    :goto_3
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->disable(I)V

    .line 125
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->setSystemUiVisibility(I)V

    .line 126
    const/4 v4, 0x2

    aget v4, v9, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->topAppWindowChanged(Z)V

    .line 128
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v5, 0x3

    aget v5, v9, v5

    const/4 v12, 0x4

    aget v12, v9, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v12}, Lcom/android/systemui/statusbar/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 129
    const/4 v4, 0x5

    aget v4, v9, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_5
    const/4 v5, 0x6

    aget v5, v9, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->setHardKeyboardStatus(ZZ)V

    .line 132
    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v17

    .line 133
    .local v17, N:I
    const/16 v24, 0x0

    .line 134
    .local v24, viewIndex:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_7
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 135
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v22

    .line 136
    .local v22, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v22, :cond_0

    .line 137
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 138
    add-int/lit8 v24, v24, 0x1

    .line 134
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 80
    .end local v6           #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    .end local v7           #notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v8           #notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .end local v9           #switches:[I
    .end local v10           #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v17           #N:I
    .end local v21           #i:I
    .end local v22           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v23           #sb:Landroid/view/View;
    .end local v24           #viewIndex:I
    .end local v25           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v20

    .line 81
    .local v20, ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    goto/16 :goto_0

    .line 90
    .end local v20           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v25       #wm:Landroid/view/IWindowManager;
    :catch_1
    move-exception v19

    .line 91
    .local v19, e:Landroid/os/RemoteException;
    const-string v4, "StatusBar"

    const-string v5, "Failing checking whether status bar can hide"

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    goto/16 :goto_1

    .line 99
    .end local v19           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v20

    .line 100
    .restart local v20       #ex:Landroid/content/res/Resources$NotFoundException;
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z

    goto/16 :goto_2

    .line 126
    .end local v20           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v6       #iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    .restart local v7       #notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v8       #notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    .restart local v9       #switches:[I
    .restart local v10       #binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .restart local v23       #sb:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_4

    .line 129
    :cond_2
    const/4 v4, 0x0

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    goto :goto_6

    .line 143
    .restart local v17       #N:I
    .restart local v21       #i:I
    .restart local v24       #viewIndex:I
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 144
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 145
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 146
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 145
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 149
    :cond_5
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notification list length mismatch: keys="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " notifications="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarHeight()I

    move-result v13

    .line 156
    .local v13, height:I
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/16 v14, 0x7d0

    const v15, 0x800048

    const/16 v16, 0x4

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 169
    .local v11, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 178
    .local v18, defaultDisplay:Landroid/view/Display;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarGravity()I

    move-result v4

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 179
    const-string v4, "StatusBar"

    invoke-virtual {v11, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 181
    const v4, 0x7f0c0009

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 182
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v11}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    new-instance v4, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 195
    return-void

    .line 120
    .end local v11           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #height:I
    .end local v17           #N:I
    .end local v18           #defaultDisplay:Landroid/view/Display;
    .end local v21           #i:I
    .end local v24           #viewIndex:I
    :catch_3
    move-exception v4

    goto/16 :goto_3
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 5
    .parameter "row"
    .parameter "n"

    .prologue
    .line 198
    const v4, 0x7f0e0064

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 199
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 201
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 202
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 203
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/StatusBar$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/StatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 214
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
