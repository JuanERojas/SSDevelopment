.class public Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;
.super Landroid/support/v4/app/Fragment;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoDetailsFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.VideoDetailsActivity$VideoDetailsFragment"


# instance fields
.field private mSelectedVideo:Lcom/tikilive/ui/model/Video;

.field private mVideoBuyButton:Landroid/widget/Button;

.field private mVideoBuyInstructions:Landroid/widget/TextView;

.field private mVideoDescription:Landroid/widget/TextView;

.field private mVideoDetails:Landroid/widget/LinearLayout;

.field private mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

.field private mVideoDuration:Landroid/widget/TextView;

.field private mVideoImage:Landroid/widget/ImageView;

.field private mVideoRating:Landroid/widget/RatingBar;

.field private mVideoTitle:Landroid/widget/TextView;

.field private mVideoWatchButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1428
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)Lcom/tikilive/ui/model/Video;
    .locals 0

    .line 1406
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p0
.end method

.method static synthetic access$4000()Ljava/lang/String;
    .locals 1

    .line 1406
    sget-object v0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;
    .locals 1

    .line 1425
    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 1434
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1436
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1438
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement VideoDetailsActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1444
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1446
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1448
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement VideoDetailsActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005b

    const/4 v0, 0x0

    .line 1455
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a02a4

    .line 1457
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDetails:Landroid/widget/LinearLayout;

    const p2, 0x7f0a02a6

    .line 1458
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoImage:Landroid/widget/ImageView;

    const p2, 0x7f0a02aa

    .line 1459
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoTitle:Landroid/widget/TextView;

    const p2, 0x7f0a02a3

    .line 1460
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDescription:Landroid/widget/TextView;

    const p2, 0x7f0a02a9

    .line 1461
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RatingBar;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoRating:Landroid/widget/RatingBar;

    const p2, 0x7f0a02a5

    .line 1462
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDuration:Landroid/widget/TextView;

    const p2, 0x7f0a02ab

    .line 1463
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    const p2, 0x7f0a029f

    .line 1464
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    const p2, 0x7f0a02a0

    .line 1465
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    .line 1467
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-static {p2}, Lcom/tikilive/ui/video/VideoDetailsActivity;->access$3800(Lcom/tikilive/ui/video/VideoDetailsActivity;)Lcom/tikilive/ui/model/Video;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1474
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1476
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    .line 1480
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    .line 1481
    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    .line 1482
    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoImage:Landroid/widget/ImageView;

    .line 1483
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1484
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Video;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 1486
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const p1, 0x7f1201bb

    .line 1487
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1489
    :cond_0
    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDescription:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoRating:Landroid/widget/RatingBar;

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getRating()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 1491
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDuration:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p2}, Lcom/tikilive/ui/model/Video;->getDurationFormatted()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoDetails:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1494
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Video;->isPremium()Z

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Video;->hasAccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1495
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1497
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    const v1, 0x7f120275

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 1498
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1558
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1559
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    const p1, 0x7f120276

    .line 1560
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://ver.woplay.tv"

    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/offers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1561
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1564
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Video;->isPpv()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Video;->hasTicket()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1565
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1566
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    const v1, 0x7f12026a

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v3}, Lcom/tikilive/ui/model/Video;->getPrice()Ljava/math/BigDecimal;

    move-result-object v3

    aput-object v3, v2, p2

    invoke-virtual {p0, v1, v2}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1567
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1585
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 1586
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12026b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    iget-object v2, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mSelectedVideo:Lcom/tikilive/ui/model/Video;

    invoke-virtual {v2}, Lcom/tikilive/ui/model/Video;->getExternalUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1587
    iget-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1591
    :cond_2
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment$3;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1599
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1600
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoWatchButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    .line 1601
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1602
    iget-object p1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$VideoDetailsFragment;->mVideoBuyInstructions:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
