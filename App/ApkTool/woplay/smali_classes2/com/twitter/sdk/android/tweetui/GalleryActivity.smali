.class public Lcom/twitter/sdk/android/tweetui/GalleryActivity;
.super Landroid/app/Activity;
.source "GalleryActivity.java"


# static fields
.field static final MEDIA_ENTITY:Ljava/lang/String; = "MEDIA_ENTITY"

.field static final TWEET_ID:Ljava/lang/String; = "TWEET_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget p1, Lcom/twitter/sdk/android/tweetui/R$layout;->tw__gallery_activity:I

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MEDIA_ENTITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 37
    sget v0, Lcom/twitter/sdk/android/tweetui/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetui/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/internal/MultiTouchImageView;

    .line 39
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/MediaEntity;->mediaUrlHttps:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void
.end method
