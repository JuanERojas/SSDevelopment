.class Lcom/facebook/share/widget/ShareDialog$FeedHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;)Z
    .locals 1

    .line 371
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;)Z
    .locals 0

    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->canShow(Lcom/facebook/share/model/ShareContent;)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-static {v1}, Lcom/facebook/share/widget/ShareDialog;->access$900(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/ShareDialog;->access$500(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 378
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 380
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_0

    .line 381
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    .line 382
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 383
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 385
    :cond_0
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    .line 386
    invoke-static {p1}, Lcom/facebook/share/internal/WebDialogParameters;->createForFeed(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v1, "feed"

    .line 389
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .locals 0

    .line 363
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$FeedHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public getMode()Ljava/lang/Object;
    .locals 1

    .line 366
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
