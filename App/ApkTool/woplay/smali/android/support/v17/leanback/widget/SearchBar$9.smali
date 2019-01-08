.class Landroid/support/v17/leanback/widget/SearchBar$9;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0

    .line 632
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 694
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer other error"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 691
    :pswitch_0
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer insufficient permissions"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :pswitch_1
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer busy"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :pswitch_2
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer no match"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 682
    :pswitch_3
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer speech timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 679
    :pswitch_4
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer client error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 676
    :pswitch_5
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer server error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    :pswitch_6
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer audio error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :pswitch_7
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer network error"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :pswitch_8
    sget-object p1, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string v0, "recognizer network timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 699
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchFailure()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "results_recognition"

    .line 721
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 727
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 733
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 741
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1, v0, p1}, Landroid/support/v17/leanback/widget/SearchEditText;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    .line 636
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showListening()V

    .line 637
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchOpen()V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "results_recognition"

    .line 706
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 711
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->submitQuery()V

    .line 715
    :cond_0
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 716
    iget-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchSuccess()V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 649
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$9;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    return-void
.end method
