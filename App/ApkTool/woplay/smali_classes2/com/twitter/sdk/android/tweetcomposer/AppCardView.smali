.class public Lcom/twitter/sdk/android/tweetcomposer/AppCardView;
.super Landroid/widget/LinearLayout;
.source "AppCardView.java"


# instance fields
.field appImageView:Landroid/widget/ImageView;

.field appInfoLayout:Landroid/view/ViewGroup;

.field appInstallButton:Landroid/widget/TextView;

.field appNameView:Landroid/widget/TextView;

.field appStoreNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method findSubviews()V
    .locals 1

    .line 60
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__app_image:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appImageView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__app_name:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appNameView:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__app_store_name:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appStoreNameView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__app_install_button:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appInstallButton:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$id;->tw__app_info_layout:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appInfoLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->setOrientation(I)V

    .line 54
    sget v0, Lcom/twitter/sdk/android/tweetcomposer/R$layout;->tw__app_card:I

    invoke-static {p1, v0, p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->findSubviews()V

    .line 56
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->setButtonColor()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetcomposer/R$dimen;->tw__card_maximum_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 97
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method setAppName(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setButtonColor()V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetcomposer/R$color;->tw__composer_blue_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appInstallButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method setCard(Lcom/twitter/sdk/android/tweetcomposer/Card;)V
    .locals 1

    .line 68
    iget-object v0, p1, Lcom/twitter/sdk/android/tweetcomposer/Card;->imageUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->setImage(Landroid/net/Uri;)V

    .line 69
    iget-object p1, p1, Lcom/twitter/sdk/android/tweetcomposer/Card;->appName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->setAppName(Ljava/lang/String;)V

    return-void
.end method

.method setImage(Landroid/net/Uri;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/twitter/sdk/android/tweetcomposer/R$dimen;->tw__card_radius_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 74
    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;

    invoke-direct {v1}, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2, v2}, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->setRadii(IIII)Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation$Builder;->build()Lcom/twitter/sdk/android/tweetcomposer/RoundedCornerTransformation;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/AppCardView;->appImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
