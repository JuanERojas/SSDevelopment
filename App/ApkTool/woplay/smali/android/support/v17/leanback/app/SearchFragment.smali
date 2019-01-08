.class public Landroid/support/v17/leanback/app/SearchFragment;
.super Landroid/app/Fragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;,
        Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ARG_PREFIX:Ljava/lang/String;

.field private static final ARG_QUERY:Ljava/lang/String;

.field private static final ARG_TITLE:Ljava/lang/String;

.field static final AUDIO_PERMISSION_REQUEST_CODE:I = 0x0

.field static final DEBUG:Z = false

.field private static final EXTRA_LEANBACK_BADGE_PRESENT:Ljava/lang/String; = "LEANBACK_BADGE_PRESENT"

.field static final QUERY_COMPLETE:I = 0x2

.field static final RESULTS_CHANGED:I = 0x1

.field static final SPEECH_RECOGNITION_DELAY_MS:J = 0x12cL

.field static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field final mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mAutoStartRecognition:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

.field final mHandler:Landroid/os/Handler;

.field private mIsPaused:Z

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field mPendingQuery:Ljava/lang/String;

.field private mPendingStartRecognitionWhenPaused:Z

.field private mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

.field mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

.field mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mResultsChangedCallback:Ljava/lang/Runnable;

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

.field private final mSetSearchResultProvider:Ljava/lang/Runnable;

.field private mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field final mStartRecognitionRunnable:Ljava/lang/Runnable;

.field mStatus:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Landroid/support/v17/leanback/app/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".query"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/support/v17/leanback/app/SearchFragment;->ARG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$1;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$2;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultsChangedCallback:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$3;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$4;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 235
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment$5;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    return-void
.end method

.method private applyExternalQuery()V
    .locals 2

    .line 738
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-nez v0, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-object v1, v1, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mSubmit:Z

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    iget-object v0, v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->submitQuery(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 745
    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, p1, v0}, Landroid/support/v17/leanback/app/SearchFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static createArgs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 264
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 266
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object p1, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private focusOnResults()V
    .locals 1

    .line 708
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 709
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v17/leanback/app/SearchFragment;
    .locals 2

    .line 281
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/SearchFragment;-><init>()V

    const/4 v1, 0x0

    .line 282
    invoke-static {v1, p0}, Landroid/support/v17/leanback/app/SearchFragment;->createArgs(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 283
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/app/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private onSetSearchResultProvider()V
    .locals 2

    .line 718
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSetSearchResultProvider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readArguments(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 752
    :cond_0
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_QUERY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->setSearchQuery(Ljava/lang/String;)V

    .line 756
    :cond_1
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    sget-object v0, Landroid/support/v17/leanback/app/SearchFragment;->ARG_TITLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private releaseRecognizer()V
    .locals 2

    .line 436
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 438
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 439
    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    :cond_0
    return-void
.end method

.method private resultsAvailable()V
    .locals 1

    .line 371
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->updateSearchBarNextFocusId()V

    return-void
.end method

.method private setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 762
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQuery(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayCompletions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions(Ljava/util/List;)V

    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    .line 578
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method executePendingQuery()V
    .locals 2

    .line 730
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    const/4 v1, 0x0

    .line 732
    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingQuery:Ljava/lang/String;

    .line 733
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/SearchFragment;->retrieveResults(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 531
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizerIntent()Landroid/content/Intent;
    .locals 4

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    .line 652
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    .line 654
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "android.speech.extra.PROMPT"

    .line 656
    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    const-string v1, "LEANBACK_BADGE_PRESENT"

    .line 658
    iget-object v3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    .line 432
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 510
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 292
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 298
    sget p3, Landroid/support/v17/leanback/R$layout;->lb_search_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 300
    sget p2, Landroid/support/v17/leanback/R$id;->lb_search_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 301
    sget p3, Landroid/support/v17/leanback/R$id;->lb_search_bar:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/SearchBar;

    iput-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    .line 302
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    new-instance p3, Landroid/support/v17/leanback/app/SearchFragment$6;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/SearchFragment$6;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchBarListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;)V

    .line 326
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object p3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    .line 327
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object p3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPermissionListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/widget/SearchBar;->setPermissionListener(Landroid/support/v17/leanback/widget/SearchBar$SearchBarPermissionListener;)V

    .line 328
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->applyExternalQuery()V

    .line 330
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/app/SearchFragment;->readArguments(Landroid/os/Bundle;)V

    .line 331
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 332
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/app/SearchFragment;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 335
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/app/SearchFragment;->setTitle(Ljava/lang/String;)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    invoke-virtual {p2, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p2

    if-nez p2, :cond_2

    .line 340
    new-instance p2, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {p2}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 341
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 342
    invoke-virtual {p2, p3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    sget p3, Landroid/support/v17/leanback/R$id;->lb_results_frame:I

    .line 345
    invoke-virtual {p2, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 347
    :goto_0
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    new-instance p3, Landroid/support/v17/leanback/app/SearchFragment$7;

    invoke-direct {p3, p0}, Landroid/support/v17/leanback/app/SearchFragment$7;-><init>(Landroid/support/v17/leanback/app/SearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 362
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object p3, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 363
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v17/leanback/app/RowsFragment;->setExpand(Z)V

    .line 364
    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz p2, :cond_3

    .line 365
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->onSetSearchResultProvider()V

    :cond_3
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 421
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseAdapter()V

    .line 422
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 414
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseRecognizer()V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    .line 416
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    if-nez p1, :cond_0

    .line 247
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 248
    aget-object p2, p2, p1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->startRecognition()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 396
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    .line 398
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 400
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 399
    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 401
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V

    .line 403
    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    if-eqz v1, :cond_1

    .line 404
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    .line 405
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    goto :goto_0

    .line 408
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 379
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 381
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 383
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$dimen;->lb_search_browse_rows_align_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 384
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v3, -0x40800000    # -1.0f

    .line 385
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 386
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 387
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 388
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 390
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusable(Z)V

    .line 391
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method queryComplete()V
    .locals 1

    .line 678
    iget v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    .line 679
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    return-void
.end method

.method releaseAdapter()V
    .locals 2

    .line 723
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAdapterObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v0, 0x0

    .line 725
    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method retrieveResults(Ljava/lang/String;)V
    .locals 1

    .line 664
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    iget p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStatus:I

    :cond_0
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 521
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 522
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1

    .line 486
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    if-eq p1, v0, :cond_0

    .line 487
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 488
    iget-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0

    .line 476
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 543
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchAffordanceColorsInListening(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    :cond_0
    return-void
.end method

.method public setSearchQuery(Landroid/content/Intent;Z)V
    .locals 1

    const-string v0, "android.speech.extra.RESULTS"

    .line 629
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 630
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/app/SearchFragment;->setSearchQuery(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mExternalQuery:Landroid/support/v17/leanback/app/SearchFragment$ExternalQuery;

    .line 613
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->applyExternalQuery()V

    .line 614
    iget-boolean p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 615
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mAutoStartRecognition:Z

    .line 616
    iget-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v17/leanback/app/SearchFragment;->mStartRecognitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setSearchResultProvider(Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;)V
    .locals 1

    .line 463
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eq v0, p1, :cond_0

    .line 464
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    .line 465
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->onSetSearchResultProvider()V

    :cond_0
    return-void
.end method

.method public setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    .line 590
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSpeechRecognitionCallback:Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSpeechRecognitionCallback(Landroid/support/v17/leanback/widget/SpeechRecognitionCallback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 594
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->releaseRecognizer()V

    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 500
    iput-object p1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mTitle:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchBar;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startRecognition()V
    .locals 1

    .line 451
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mIsPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mPendingStartRecognitionWhenPaused:Z

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V

    :goto_0
    return-void
.end method

.method submitQuery(Ljava/lang/String;)V
    .locals 1

    .line 670
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/SearchFragment;->queryComplete()V

    .line 671
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mProvider:Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/app/SearchFragment$SearchResultProvider;->onQueryTextSubmit(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method updateFocus()V
    .locals 2

    .line 699
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 700
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne v0, v1, :cond_0

    .line 701
    invoke-direct {p0}, Landroid/support/v17/leanback/app/SearchFragment;->focusOnResults()V

    goto :goto_0

    .line 703
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->requestFocus()Z

    :goto_0
    return-void
.end method

.method updateSearchBarNextFocusId()V
    .locals 2

    .line 689
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    goto :goto_2

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 693
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 694
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getId()I

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 695
    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setNextFocusDownId(I)V

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method updateSearchBarVisibility()V
    .locals 2

    .line 683
    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 684
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/SearchFragment;->mSearchBar:Landroid/support/v17/leanback/widget/SearchBar;

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/SearchFragment;->mResultAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 685
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 684
    :goto_2
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchBar;->setVisibility(I)V

    return-void
.end method
