.class public Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;
.super Landroid/support/v4/app/Fragment;
.source "VideoDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/VideoDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllEpisodesFragment"
.end annotation


# instance fields
.field private mSelectedNetworkId:I

.field private mTotalVideos:I

.field private mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

.field private mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1093
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 1086
    iput v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    .line 1087
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2800(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;)I
    .locals 0

    .line 1081
    iget p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    return p0
.end method

.method static synthetic access$2900(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;)Lcom/tikilive/ui/video/VideoDetailsActivity;
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;)I
    .locals 0

    .line 1081
    iget p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mSelectedNetworkId:I

    return p0
.end method

.method static synthetic access$3100(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;)Ljava/util/List;
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;
    .locals 1

    .line 1090
    new-instance v0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 1099
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1101
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1103
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

    .line 1109
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1111
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/VideoDetailsActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1113
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
    .locals 8

    const/4 p3, 0x0

    const v0, 0x7f0d005c

    .line 1120
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0257

    .line 1122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 1123
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v0, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    .line 1125
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getSelectedNetworkId()I

    move-result v1

    iput v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mSelectedNetworkId:I

    .line 1126
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getTotalVideos()I

    move-result v1

    iput v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    .line 1127
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-virtual {v1}, Lcom/tikilive/ui/video/VideoDetailsActivity;->getVideos()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    .line 1129
    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7f0a0143

    .line 1131
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120023

    .line 1132
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a0139

    .line 1134
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1135
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    const v6, 0x7f10000e

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget v7, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, p3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mTotalVideos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1139
    new-instance v4, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$1;

    invoke-direct {v4, p0, v3, p3, p2}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$1;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_1

    .line 1153
    iget-object p3, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideos:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/model/Video;

    .line 1154
    new-instance v3, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$2;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;Lcom/tikilive/ui/model/Video;)V

    invoke-virtual {v0, v1, v4, v3}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1167
    :cond_1
    new-instance p3, Lcom/tikilive/ui/video/GridLayoutManager;

    iget-object v1, p0, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->mVideoDetailsActivity:Lcom/tikilive/ui/video/VideoDetailsActivity;

    const/4 v3, 0x4

    invoke-direct {p3, v1, v3}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1168
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1169
    new-instance v1, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 1170
    invoke-virtual {p0}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0702ae

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v3}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 1169
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 1172
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 1173
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1175
    new-instance v1, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$3;

    invoke-direct {v1, p0, p3, v0, v4}, Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment$3;-><init>(Lcom/tikilive/ui/video/VideoDetailsActivity$AllEpisodesFragment;Lcom/tikilive/ui/video/GridLayoutManager;Lcom/tikilive/ui/video/VideoLibraryAdapter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-object p1
.end method
