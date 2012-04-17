.class public Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLUserProfile.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field private static final CANCEL_BTN_HEIGHT:I = 0x48

.field private static final CANCEL_BTN_POS_X:I = 0xd7

.field private static final CANCEL_BTN_POS_Y:I = 0xd5

.field private static final CANCEL_BTN_WIDTH:I = 0xc9

.field private static final IMAGE_HEIGHT:I = 0x50

.field private static final IMAGE_POS_X:I = 0x16

.field private static final IMAGE_POS_Y:I = 0x68

.field private static final IMAGE_WIDTH:I = 0x50

.field private static final MENU_HEIGHT:I = 0x122

.field private static final MENU_POS_X:I = 0xb9

.field private static final MENU_POS_Y:I = 0x60

.field private static final MENU_WIDTH:I = 0x1ab

.field private static final NAME_FONT_SIZE:F = 30.0f

#the value of this static final field might be set in the static constructor
.field private static final NAME_TEXT_COLOR:I = 0x0

.field private static final NAME_TEXT_HEIGHT:I = 0x48

.field private static final NAME_TEXT_POS_X:I = 0x71

.field private static final NAME_TEXT_POS_Y:I = 0x72

.field private static final NAME_TEXT_WIDTH:I = 0x129

.field private static final OK_BTN_HEIGHT:I = 0x48

.field private static final OK_BTN_POS_X:I = 0xb

.field private static final OK_BTN_POS_Y:I = 0xd5

.field private static final OK_BTN_WIDTH:I = 0xc9

.field private static final SCREEN_HEIGHT:I = 0x320

.field private static final SCREEN_WIDTH:I = 0x1e0

.field private static final TITLE_FONT_SIZE:F = 35.0f

.field private static final TITLE_HEIGHT:I = 0x58

.field private static final TITLE_ICON_POS_X:I = 0x16

.field private static final TITLE_ICON_POS_Y:I = 0x17

.field private static final TITLE_LEFT_PADDING:I = 0x55

.field private static final TITLE_TEXT_COLOR:I

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private mImage:Lcom/sec/android/glview/TwGLImage;

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

.field private mTitleIcon:Lcom/sec/android/glview/TwGLImage;

.field private mTmpImage:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I

.field private userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 90
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    .line 100
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 12
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "resourceData"
    .parameter "menuResourceDepot"
    .parameter "zOrder"
    .parameter "slideDirection"

    .prologue
    .line 138
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 135
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    .line 140
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 141
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 142
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 143
    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mZOrder:I

    .line 144
    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    .line 145
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mResolver:Landroid/content/ContentResolver;

    .line 148
    new-instance v1, Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x42c0

    const v5, 0x43d58000

    const/high16 v6, 0x4391

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    .line 149
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/high16 v3, 0x42aa

    const/4 v4, 0x0

    const/high16 v5, 0x43ab

    const/high16 v6, 0x42b0

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x420c

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    .line 152
    .local v1, title:Lcom/sec/android/glview/TwGLText;
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    .line 160
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x42e2

    const/high16 v5, 0x42e4

    const v6, 0x43948000

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 162
    new-instance v2, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x40a0

    const/4 v5, 0x0

    const v6, 0x438f8000

    const/high16 v7, 0x4290

    const-string v8, ""

    const/high16 v9, 0x41f0

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->NAME_TEXT_COLOR:I

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setLock(Z)V

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 170
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4130

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 172
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/high16 v4, 0x4357

    const/high16 v5, 0x4355

    const/high16 v6, 0x4349

    const/high16 v7, 0x4290

    const v8, 0x7f020018

    const v9, 0x7f020019

    const v10, 0x7f020018

    const v11, 0x7f020017

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTag(I)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setRotatable(Z)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setDragSensitivity(I)V

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x43d58000

    const/high16 v4, 0x4391

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setVisibility(I)V

    .line 188
    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x0

    const/high16 v4, 0x4339

    const/high16 v5, 0x42c0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x1

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x2

    const/high16 v4, 0x4339

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42c0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v3, 0x3

    const/high16 v4, 0x4448

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/high16 v5, 0x43f0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLTitleDecorator;->setLeftTop(IFF)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLTitleDecorator;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 201
    const-string v2, "TwGLUserProfile()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------------xywh = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getLeft()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getTop()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->getHeight()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    return-void
.end method

.method private getUserName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-nez v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v1}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_1
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setUserName(Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 440
    :cond_1
    return v2
.end method

.method public onAnimationEnd()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideWaitingAnimation()V

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 14
    .parameter "view"

    .prologue
    const/16 v6, 0x35

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v2, 0x3b

    .line 256
    const/4 v9, 0x0

    .line 257
    .local v9, fOut:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_3

    .line 258
    new-instance v12, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-class v2, Lcom/sec/android/app/camera/EditUserName;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v12, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_2

    .line 260
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x7d5

    invoke-virtual {v1, v12, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 333
    .end local v12           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 335
    :try_start_0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 336
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 342
    :cond_1
    :goto_2
    return-void

    .line 262
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_2
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 266
    .end local v12           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mOkButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v1, v2, :cond_4

    .line 268
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v1, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 270
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v11, file:Ljava/io/File;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v9           #fOut:Ljava/io/FileOutputStream;
    .local v10, fOut:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 277
    .end local v10           #fOut:Ljava/io/FileOutputStream;
    .restart local v9       #fOut:Ljava/io/FileOutputStream;
    :goto_3
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v7, v1, v2, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 279
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 280
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 287
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->userInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 299
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1

    .line 273
    .restart local v7       #b:Landroid/graphics/Bitmap;
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 275
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 281
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 283
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 294
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #e:Ljava/io/IOException;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v8

    .line 296
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 300
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mCancelButton:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    if-ne p1, v1, :cond_6

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 302
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v2, v1, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v6, v1, v2, v3, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_1

    .line 306
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_9

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 309
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_7

    .line 310
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 311
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    .line 315
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_1

    .line 317
    :cond_8
    const-string v1, "sns--execute"

    const-string v2, "not active"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_1

    .line 320
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    if-ne p1, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 323
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    if-nez v0, :cond_a

    .line 324
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mSlideDirection:I

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 325
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 328
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_1

    .line 330
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_1

    .line 337
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    :catch_3
    move-exception v8

    .line 339
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onDrag(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p3, p4}, Lcom/sec/android/glview/TwGLTitleDecorator;->translate(FF)V

    .line 413
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 417
    return-void
.end method

.method public onDragStart(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 409
    return-void
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v1, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 404
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 405
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 467
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 451
    const-string v0, "wenfeng"

    const-string v1, " show TwGLUserProfile on Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->onReset()V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTextFrame:Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfileButton;->onLayoutUpdate()V

    .line 459
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onShow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v3, 0x42d0

    const/high16 v2, 0x41b0

    const/high16 v4, 0x42a0

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->setListBackgrouond(I)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v1, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v0, v1, :cond_1

    .line 366
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 384
    :goto_0
    const-string v0, "wenfeng"

    const-string v1, " user profile onshow "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-boolean v0, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v0, :cond_3

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 389
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x43d58000

    const/high16 v2, 0x4391

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 395
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 396
    return-void

    .line 372
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const-string v6, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    .line 377
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setSampleSize(I)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mTmpImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v4, 0x7f020180

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_2

    .line 388
    .end local v7           #f:Ljava/io/File;
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method protected produceGSPersonalSettingInfoValue()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 218
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLText;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 230
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 240
    :goto_1
    return-object v2

    .line 227
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 232
    :pswitch_0
    const v3, 0x7f020180

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 235
    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListBackgrouond(I)V
    .locals 2
    .parameter "zOrder"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLUserProfile;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020177

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z

    .line 252
    return-void
.end method
