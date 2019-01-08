.class public Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;
.super Landroid/support/v4/app/Fragment;
.source "TopLevelCategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/TopLevelCategoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopLevelCategoriesFragment"
.end annotation


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelCategoriesActivity:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;)Ljava/util/List;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mCategories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;)Lcom/tikilive/ui/video/TopLevelCategoriesActivity;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mTopLevelCategoriesActivity:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;
    .locals 1

    .line 160
    new-instance v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 168
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 170
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mTopLevelCategoriesActivity:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 172
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of TopLevelCategoriesActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 180
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mTopLevelCategoriesActivity:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 182
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of TopLevelCategoriesActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 p3, 0x0

    const v0, 0x7f0d005c

    .line 189
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 191
    iget-object p2, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mTopLevelCategoriesActivity:Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-virtual {p2}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;->getCategories()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mCategories:Ljava/util/List;

    const p2, 0x7f0a0257

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    .line 194
    new-instance v0, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    const v1, 0x7f0a0143

    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f12026d

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0139

    .line 199
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    invoke-virtual {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const v4, 0x7f10000d

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mCategories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 201
    new-instance v2, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$1;

    invoke-direct {v2, p0, v1, p3, p2}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$1;-><init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;Landroid/widget/TextView;Ljava/lang/String;Landroid/support/v7/widget/RecyclerView;)V

    .line 213
    iget-object v4, p0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->mCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tikilive/ui/model/VideoCategory;

    .line 214
    new-instance v6, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$2;

    invoke-direct {v6, p0, v5}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$2;-><init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;Lcom/tikilive/ui/model/VideoCategory;)V

    invoke-virtual {v0, v5, v2, v6}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addCategory(Lcom/tikilive/ui/model/VideoCategory;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    new-instance p3, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p3, v1, v2}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 228
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 229
    new-instance p3, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 230
    invoke-virtual {p0}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p3, v1}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 229
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 232
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 233
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 235
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v0, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment$3;-><init>(Lcom/tikilive/ui/video/TopLevelCategoriesActivity$TopLevelCategoriesFragment;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1
.end method
