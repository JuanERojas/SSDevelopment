.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# static fields
.field private static final FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 60
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 70
    :goto_0
    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    return-void
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 7

    monitor-enter p0

    .line 162
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xb

    if-nez v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 163
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 164
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x2

    .line 165
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x3

    .line 166
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 167
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x5

    .line 168
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    aput-object v4, v0, v2

    const/4 v2, 0x6

    .line 169
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(II)V

    aput-object v4, v0, v2

    const/4 v2, 0x7

    .line 170
    new-instance v4, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x8

    .line 171
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0x9

    .line 172
    new-instance v4, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    aput-object v4, v0, v2

    const/16 v2, 0xa

    .line 173
    new-instance v4, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    aput-object v4, v0, v2

    .line 174
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 176
    :try_start_1
    sget-object v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTRACTOR_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/Extractor;

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 161
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 118
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 93
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 130
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 105
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 104
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 156
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    .line 142
    :try_start_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    throw p1
.end method
