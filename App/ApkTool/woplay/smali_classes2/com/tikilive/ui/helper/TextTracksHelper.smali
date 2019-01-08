.class public Lcom/tikilive/ui/helper/TextTracksHelper;
.super Ljava/lang/Object;
.source "TextTracksHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.helper.TextTracksHelper"

.field private static final TEXT_TRACKS_HELPER_PREFERENCES_FILE:Ljava/lang/String; = "TextTracksHelperPreferences"


# instance fields
.field private bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

.field private trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    .line 37
    iput-object p2, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    .line 38
    iput-object p3, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    return-void
.end method

.method private getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 6

    .line 390
    iget-object v0, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 395
    :goto_0
    iget v3, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v2, v3, :cond_2

    .line 396
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v3

    .line 397
    iget v4, v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v4, v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getTracksAdding(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;I)[I
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->tracks:[I

    .line 407
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 408
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput p1, p0, v0

    return-object p0
.end method


# virtual methods
.method public autoEnableTextTrack(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "TextTracksHelperPreferences"

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 321
    :cond_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "textTrackIndex"

    .line 323
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "groupIndex"

    .line 324
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "trackIndex"

    .line 325
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 327
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTextTrackIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne p1, v1, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getPairTrackList()Ljava/util/ArrayList;

    move-result-object p1

    .line 330
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 331
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 332
    invoke-virtual {p0, v1}, Lcom/tikilive/ui/helper/TextTracksHelper;->enableTextTrack(Landroid/util/Pair;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public disableTextTracks()V
    .locals 3

    .line 274
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTextTrackIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->setRendererDisabled(IZ)V

    .line 277
    iget-object v1, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->clearSelectionOverrides(I)V

    :cond_0
    return-void
.end method

.method public enableTextTrack(Landroid/util/Pair;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTextTrackIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 293
    :cond_1
    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 294
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 296
    new-instance v4, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    new-instance v5, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    const/4 v6, 0x1

    new-array v7, v6, [I

    aput p1, v7, v1

    invoke-direct {v4, v5, v3, v7}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    invoke-static {v4, p1}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTracksAdding(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;I)[I

    move-result-object p1

    .line 301
    array-length v4, p1

    if-ne v4, v6, :cond_2

    new-instance v4, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;

    iget-object v5, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    invoke-direct {v4, v5}, Lcom/tikilive/ui/channel/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V

    .line 305
    :goto_0
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    invoke-direct {v5, v4, v3, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;I[I)V

    .line 306
    iget-object p1, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {p1, v2, v0, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;)V

    .line 307
    iget-object p1, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->setRendererDisabled(IZ)V

    return v6
.end method

.method public getPairTrackList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTextTrackIndex()I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 44
    :goto_0
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v1, v2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->player:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getRendererType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    .line 47
    iget v2, v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getTrackName(Landroid/util/Pair;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unknown"

    return-object p1

    .line 95
    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 101
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    iget-object p1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "spa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "fre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "esp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "eng"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "zu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x50

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "zh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4f

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "yi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4e

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "vi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4d

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "uk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4c

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "ty"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4b

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "tr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4a

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "th"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x49

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "ta"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x48

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "sw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x47

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "sv"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x46

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "sr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x45

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "sq"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x44

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "so"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x43

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "sm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x42

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "sl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x41

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "sk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "sh"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3f

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "sa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3e

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "ru"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3d

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "ro"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3c

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "pt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3b

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "pl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x3a

    goto/16 :goto_1

    :sswitch_1b
    const-string v3, "pa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x39

    goto/16 :goto_1

    :sswitch_1c
    const-string v3, "no"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x38

    goto/16 :goto_1

    :sswitch_1d
    const-string v3, "nl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x37

    goto/16 :goto_1

    :sswitch_1e
    const-string v3, "mt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x36

    goto/16 :goto_1

    :sswitch_1f
    const-string v3, "ms"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x35

    goto/16 :goto_1

    :sswitch_20
    const-string v3, "mo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x34

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "mn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x33

    goto/16 :goto_1

    :sswitch_22
    const-string v3, "ml"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x32

    goto/16 :goto_1

    :sswitch_23
    const-string v3, "mk"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x31

    goto/16 :goto_1

    :sswitch_24
    const-string v3, "lv"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x30

    goto/16 :goto_1

    :sswitch_25
    const-string v3, "lt"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2f

    goto/16 :goto_1

    :sswitch_26
    const-string v3, "lb"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2e

    goto/16 :goto_1

    :sswitch_27
    const-string v3, "la"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2d

    goto/16 :goto_1

    :sswitch_28
    const-string v3, "ko"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2c

    goto/16 :goto_1

    :sswitch_29
    const-string v3, "ka"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2b

    goto/16 :goto_1

    :sswitch_2a
    const-string v3, "ji"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string v3, "ja"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x29

    goto/16 :goto_1

    :sswitch_2c
    const-string v3, "iw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x28

    goto/16 :goto_1

    :sswitch_2d
    const-string v3, "it"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x27

    goto/16 :goto_1

    :sswitch_2e
    const-string v3, "is"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x26

    goto/16 :goto_1

    :sswitch_2f
    const-string v3, "in"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x25

    goto/16 :goto_1

    :sswitch_30
    const-string v3, "id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x24

    goto/16 :goto_1

    :sswitch_31
    const-string v3, "hy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x23

    goto/16 :goto_1

    :sswitch_32
    const-string v3, "hu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x22

    goto/16 :goto_1

    :sswitch_33
    const-string v3, "ht"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x21

    goto/16 :goto_1

    :sswitch_34
    const-string v3, "hr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    goto/16 :goto_1

    :sswitch_35
    const-string v3, "hi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1f

    goto/16 :goto_1

    :sswitch_36
    const-string v3, "he"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1e

    goto/16 :goto_1

    :sswitch_37
    const-string v3, "gl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_38
    const-string v3, "gd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1c

    goto/16 :goto_1

    :sswitch_39
    const-string v3, "ga"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1b

    goto/16 :goto_1

    :sswitch_3a
    const-string v3, "fr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_3b
    const-string v3, "fo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x18

    goto/16 :goto_1

    :sswitch_3c
    const-string v3, "fj"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_3d
    const-string v3, "fi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_3e
    const-string v3, "fa"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x15

    goto/16 :goto_1

    :sswitch_3f
    const-string v3, "eu"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_40
    const-string v3, "et"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    goto/16 :goto_1

    :sswitch_41
    const-string v3, "es"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_42
    const-string v3, "en"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_43
    const-string v3, "el"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_44
    const-string v3, "de"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_45
    const-string v3, "da"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_46
    const-string v3, "cy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_47
    const-string v3, "cs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_48
    const-string v3, "ca"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_49
    const-string v3, "bs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4a
    const-string v3, "bo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_4b
    const-string v3, "bn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4c
    const-string v3, "bg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4d
    const-string v3, "be"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4e
    const-string v3, "az"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4f
    const-string v3, "ar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_50
    const-string v3, "af"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "Zulu"

    return-object p1

    :pswitch_1
    const-string p1, "Chinese"

    return-object p1

    :pswitch_2
    const-string p1, "Yiddish"

    return-object p1

    :pswitch_3
    const-string p1, "Vietnamese"

    return-object p1

    :pswitch_4
    const-string p1, "Ukrainian"

    return-object p1

    :pswitch_5
    const-string p1, "Tahitian"

    return-object p1

    :pswitch_6
    const-string p1, "Turkish"

    return-object p1

    :pswitch_7
    const-string p1, "Thai"

    return-object p1

    :pswitch_8
    const-string p1, "Tamil"

    return-object p1

    :pswitch_9
    const-string p1, "Swahili"

    return-object p1

    :pswitch_a
    const-string p1, "Swedish"

    return-object p1

    :pswitch_b
    const-string p1, "Serbian"

    return-object p1

    :pswitch_c
    const-string p1, "Albanian"

    return-object p1

    :pswitch_d
    const-string p1, "Somali"

    return-object p1

    :pswitch_e
    const-string p1, "Samoan"

    return-object p1

    :pswitch_f
    const-string p1, "Slovenian"

    return-object p1

    :pswitch_10
    const-string p1, "Slovak"

    return-object p1

    :pswitch_11
    const-string p1, "Serbo-Croatian"

    return-object p1

    :pswitch_12
    const-string p1, "Sanskrit"

    return-object p1

    :pswitch_13
    const-string p1, "Russian"

    return-object p1

    :pswitch_14
    const-string p1, "Romanian"

    return-object p1

    :pswitch_15
    const-string p1, "Portuguese"

    return-object p1

    :pswitch_16
    const-string p1, "Polish"

    return-object p1

    :pswitch_17
    const-string p1, "Panjabi"

    return-object p1

    :pswitch_18
    const-string p1, "Norwegian"

    return-object p1

    :pswitch_19
    const-string p1, "Dutch"

    return-object p1

    :pswitch_1a
    const-string p1, "Maltese"

    return-object p1

    :pswitch_1b
    const-string p1, "Malay"

    return-object p1

    :pswitch_1c
    const-string p1, "Moldavian"

    return-object p1

    :pswitch_1d
    const-string p1, "Mongolian"

    return-object p1

    :pswitch_1e
    const-string p1, "Malayalam"

    return-object p1

    :pswitch_1f
    const-string p1, "Macedonian"

    return-object p1

    :pswitch_20
    const-string p1, "Latvian"

    return-object p1

    :pswitch_21
    const-string p1, "Lithuanian"

    return-object p1

    :pswitch_22
    const-string p1, "Luxembourgish"

    return-object p1

    :pswitch_23
    const-string p1, "Latin"

    return-object p1

    :pswitch_24
    const-string p1, "Korean"

    return-object p1

    :pswitch_25
    const-string p1, "Georgian"

    return-object p1

    :pswitch_26
    const-string p1, "Yiddish"

    return-object p1

    :pswitch_27
    const-string p1, "Japanese"

    return-object p1

    :pswitch_28
    const-string p1, "Hebrew"

    return-object p1

    :pswitch_29
    const-string p1, "Italian"

    return-object p1

    :pswitch_2a
    const-string p1, "Icelandic"

    return-object p1

    :pswitch_2b
    const-string p1, "Indonesian"

    return-object p1

    :pswitch_2c
    const-string p1, "Indonesian"

    return-object p1

    :pswitch_2d
    const-string p1, "Armenian"

    return-object p1

    :pswitch_2e
    const-string p1, "Hungarian"

    return-object p1

    :pswitch_2f
    const-string p1, "Haitian"

    return-object p1

    :pswitch_30
    const-string p1, "Croatian"

    return-object p1

    :pswitch_31
    const-string p1, "Hindi"

    return-object p1

    :pswitch_32
    const-string p1, "Hebrew"

    return-object p1

    :pswitch_33
    const-string p1, "Galician"

    return-object p1

    :pswitch_34
    const-string p1, "Scottish Gaelic"

    return-object p1

    :pswitch_35
    const-string p1, "Irish"

    return-object p1

    :pswitch_36
    const-string p1, "French"

    return-object p1

    :pswitch_37
    const-string p1, "Faroese"

    return-object p1

    :pswitch_38
    const-string p1, "Fijian"

    return-object p1

    :pswitch_39
    const-string p1, "Finnish"

    return-object p1

    :pswitch_3a
    const-string p1, "Persian"

    return-object p1

    :pswitch_3b
    const-string p1, "Basque"

    return-object p1

    :pswitch_3c
    const-string p1, "Estonian"

    return-object p1

    :pswitch_3d
    const-string p1, "Spanish"

    return-object p1

    :pswitch_3e
    const-string p1, "English"

    return-object p1

    :pswitch_3f
    const-string p1, "Modern Greek"

    return-object p1

    :pswitch_40
    const-string p1, "German"

    return-object p1

    :pswitch_41
    const-string p1, "Danish"

    return-object p1

    :pswitch_42
    const-string p1, "Welsh"

    return-object p1

    :pswitch_43
    const-string p1, "Czech"

    return-object p1

    :pswitch_44
    const-string p1, "Catalan"

    return-object p1

    :pswitch_45
    const-string p1, "Bosnian"

    return-object p1

    :pswitch_46
    const-string p1, "Tibetan"

    return-object p1

    :pswitch_47
    const-string p1, "Bengali"

    return-object p1

    :pswitch_48
    const-string p1, "Bulgarian"

    return-object p1

    :pswitch_49
    const-string p1, "Belarusian"

    return-object p1

    :pswitch_4a
    const-string p1, "Azerbaijani"

    return-object p1

    :pswitch_4b
    const-string p1, "Arabic"

    return-object p1

    :pswitch_4c
    const-string p1, "Afrikaans"

    return-object p1

    .line 266
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closed Captions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtitle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xc25 -> :sswitch_50
        0xc31 -> :sswitch_4f
        0xc39 -> :sswitch_4e
        0xc43 -> :sswitch_4d
        0xc45 -> :sswitch_4c
        0xc4c -> :sswitch_4b
        0xc4d -> :sswitch_4a
        0xc51 -> :sswitch_49
        0xc5e -> :sswitch_48
        0xc70 -> :sswitch_47
        0xc76 -> :sswitch_46
        0xc7d -> :sswitch_45
        0xc81 -> :sswitch_44
        0xca7 -> :sswitch_43
        0xca9 -> :sswitch_42
        0xcae -> :sswitch_41
        0xcaf -> :sswitch_40
        0xcb0 -> :sswitch_3f
        0xcbb -> :sswitch_3e
        0xcc3 -> :sswitch_3d
        0xcc4 -> :sswitch_3c
        0xcc9 -> :sswitch_3b
        0xccc -> :sswitch_3a
        0xcda -> :sswitch_39
        0xcdd -> :sswitch_38
        0xce5 -> :sswitch_37
        0xcfd -> :sswitch_36
        0xd01 -> :sswitch_35
        0xd0a -> :sswitch_34
        0xd0c -> :sswitch_33
        0xd0d -> :sswitch_32
        0xd11 -> :sswitch_31
        0xd1b -> :sswitch_30
        0xd25 -> :sswitch_2f
        0xd2a -> :sswitch_2e
        0xd2b -> :sswitch_2d
        0xd2e -> :sswitch_2c
        0xd37 -> :sswitch_2b
        0xd3f -> :sswitch_2a
        0xd56 -> :sswitch_29
        0xd64 -> :sswitch_28
        0xd75 -> :sswitch_27
        0xd76 -> :sswitch_26
        0xd88 -> :sswitch_25
        0xd8a -> :sswitch_24
        0xd9e -> :sswitch_23
        0xd9f -> :sswitch_22
        0xda1 -> :sswitch_21
        0xda2 -> :sswitch_20
        0xda6 -> :sswitch_1f
        0xda7 -> :sswitch_1e
        0xdbe -> :sswitch_1d
        0xdc1 -> :sswitch_1c
        0xdf1 -> :sswitch_1b
        0xdfc -> :sswitch_1a
        0xe04 -> :sswitch_19
        0xe3d -> :sswitch_18
        0xe43 -> :sswitch_17
        0xe4e -> :sswitch_16
        0xe55 -> :sswitch_15
        0xe58 -> :sswitch_14
        0xe59 -> :sswitch_13
        0xe5a -> :sswitch_12
        0xe5c -> :sswitch_11
        0xe5e -> :sswitch_10
        0xe5f -> :sswitch_f
        0xe63 -> :sswitch_e
        0xe64 -> :sswitch_d
        0xe6d -> :sswitch_c
        0xe74 -> :sswitch_b
        0xe7e -> :sswitch_a
        0xe85 -> :sswitch_9
        0xe96 -> :sswitch_8
        0xeb3 -> :sswitch_7
        0xf10 -> :sswitch_6
        0xf2e -> :sswitch_5
        0xf3b -> :sswitch_4
        0x188de -> :sswitch_3
        0x18982 -> :sswitch_2
        0x18d19 -> :sswitch_1
        0x1bda4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public hasTextTracks()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTextTrackEnabled(Landroid/util/Pair;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTextTrackIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return v1

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->hasSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 384
    :cond_2
    iget-object v3, p0, Lcom/tikilive/ui/helper/TextTracksHelper;->trackSelector:Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;

    invoke-virtual {v3, v2, v0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;->getSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 385
    iget v2, v0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->groupIndex:I

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$SelectionOverride;->containsTrack(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public removeTextTrackAutoStatus(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "TextTracksHelperPreferences"

    const/4 v1, 0x0

    .line 362
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 363
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveTextTrackAutoStatus(Landroid/content/Context;ILandroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 343
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 345
    :try_start_0
    invoke-virtual {p0}, Lcom/tikilive/ui/helper/TextTracksHelper;->getTextTrackIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "textTrackIndex"

    .line 347
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "groupIndex"

    .line 348
    iget-object v2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trackIndex"

    .line 349
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "TextTracksHelperPreferences"

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 352
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 353
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channel_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    sget-object p3, Lcom/tikilive/ui/helper/TextTracksHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not save subtitle status for channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public textTracksEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
