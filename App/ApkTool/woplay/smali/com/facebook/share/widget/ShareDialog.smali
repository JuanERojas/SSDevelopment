.class public final Lcom/facebook/share/widget/ShareDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "ShareDialog.java"

# interfaces
.implements Lcom/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/ShareDialog$FeedHandler;,
        Lcom/facebook/share/widget/ShareDialog$WebShareHandler;,
        Lcom/facebook/share/widget/ShareDialog$NativeHandler;,
        Lcom/facebook/share/widget/ShareDialog$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">;",
        "Lcom/facebook/share/Sharer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final FEED_DIALOG:Ljava/lang/String; = "feed"

.field private static final WEB_OG_SHARE_DIALOG:Ljava/lang/String; = "share_open_graph"

.field private static final WEB_SHARE_DIALOG:Ljava/lang/String; = "share"


# instance fields
.field private isAutomaticMode:Z

.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 85
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 169
    sget v0, Lcom/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 171
    sget p1, Lcom/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 201
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1

    .line 188
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .locals 1

    .line 211
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    .line 206
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .locals 1

    .line 192
    sget v0, Lcom/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 194
    sget p1, Lcom/facebook/share/widget/ShareDialog;->DEFAULT_REQUEST_CODE:I

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 217
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->canShowNative(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/Class;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 145
    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->canShowWebTypeCheck(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->canShowNative(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static canShowNative(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 149
    invoke-static {p0}, Lcom/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 151
    invoke-static {p0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static canShowWebTypeCheck(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 160
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/DialogFeature;"
        }
    .end annotation

    .line 400
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    sget-object p0, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 402
    :cond_0
    const-class v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    sget-object p0, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 404
    :cond_1
    const-class v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    sget-object p0, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    return-object p0

    .line 406
    :cond_2
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 407
    sget-object p0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    .locals 2

    .line 414
    iget-boolean v0, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    if-eqz v0, :cond_0

    .line 415
    sget-object p3, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    .line 418
    :cond_0
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$1;->$SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I

    invoke-virtual {p3}, Lcom/facebook/share/widget/ShareDialog$Mode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    const-string p3, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p3, "native"

    goto :goto_0

    :pswitch_1
    const-string p3, "web"

    goto :goto_0

    :pswitch_2
    const-string p3, "automatic"

    .line 434
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/share/widget/ShareDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object p2

    .line 435
    sget-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/share/internal/ShareDialogFeature;

    if-ne p2, v0, :cond_1

    const-string p2, "status"

    goto :goto_1

    .line 437
    :cond_1
    sget-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->PHOTOS:Lcom/facebook/share/internal/ShareDialogFeature;

    if-ne p2, v0, :cond_2

    const-string p2, "photo"

    goto :goto_1

    .line 439
    :cond_2
    sget-object v0, Lcom/facebook/share/internal/ShareDialogFeature;->VIDEO:Lcom/facebook/share/internal/ShareDialogFeature;

    if-ne p2, v0, :cond_3

    const-string p2, "video"

    goto :goto_1

    .line 441
    :cond_3
    sget-object v0, Lcom/facebook/share/internal/OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/share/internal/OpenGraphActionDialogFeature;

    if-ne p2, v0, :cond_4

    const-string p2, "open_graph"

    goto :goto_1

    :cond_4
    const-string p2, "unknown"

    .line 447
    :goto_1
    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object p1

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_share_dialog_show"

    .line 449
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "fb_share_dialog_content_type"

    .line 453
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "fb_share_dialog_show"

    const/4 p3, 0x0

    .line 457
    invoke-virtual {p1, p2, p3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 127
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    return-void
.end method

.method public static show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 114
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z
    .locals 1

    .line 245
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/facebook/share/widget/ShareDialog;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog;->canShowImpl(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .locals 2

    .line 260
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v1, Lcom/facebook/share/widget/ShareDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/ShareDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/facebook/share/widget/ShareDialog$FeedHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    return v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareDialog;->getRequestCode()I

    move-result v0

    .line 224
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/facebook/share/widget/ShareDialog;->shouldFailOnDataError:Z

    return-void
.end method

.method public show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    .locals 1

    .line 253
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    .line 255
    iget-boolean v0, p0, Lcom/facebook/share/widget/ShareDialog;->isAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-object p2, Lcom/facebook/share/widget/ShareDialog;->BASE_AUTOMATIC_MODE:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog;->showImpl(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
