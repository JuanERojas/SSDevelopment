.class public abstract Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;
.super Landroid/os/AsyncTask;
.source "FetchBitmapTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAllowedToScale:Z

.field private final mPreferredHeight:I

.field private final mPreferredWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    .line 55
    iput p2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    .line 56
    iput-boolean p3, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mAllowedToScale:Z

    return-void
.end method

.method private calculateInSampleSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, p4, :cond_0

    if-le p1, p3, :cond_1

    .line 220
    :cond_0
    div-int/lit8 p2, p2, 0x2

    .line 221
    div-int/lit8 p1, p1, 0x2

    .line 225
    :goto_0
    div-int v1, p2, v0

    if-le v1, p4, :cond_1

    div-int v1, p1, v0

    if-le v1, p3, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private calculateOriginalDimensions(Ljava/net/URL;)Landroid/graphics/Point;
    .locals 5

    .line 183
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 184
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 185
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    .line 189
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 190
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    new-instance v2, Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v4, v0}, Landroid/graphics/Point;-><init>(II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v3, :cond_1

    .line 201
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-object v3, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v2

    move-object v3, p1

    :goto_0
    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    if-eqz v3, :cond_3

    .line 201
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    :catch_2
    :cond_3
    throw v0

    :catch_3
    move-object p1, v2

    move-object v3, p1

    :catch_4
    :goto_1
    if-eqz p1, :cond_4

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v3, :cond_5

    .line 201
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 206
    :catch_5
    :cond_5
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 161
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    sub-int v2, v0, v2

    .line 162
    iget v3, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    sub-int v3, v1, v3

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    return-object p1

    .line 168
    :cond_0
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 169
    iget v3, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    int-to-float v3, v3

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 170
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v0, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 175
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    .line 84
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 91
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7

    .line 95
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 97
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 98
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    if-lez v0, :cond_1

    .line 103
    invoke-direct {p0, v3}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->calculateOriginalDimensions(Ljava/net/URL;)Landroid/graphics/Point;

    move-result-object v0

    .line 104
    iget v4, v0, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_1

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_1

    .line 105
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    iget v6, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->calculateInSampleSize(IIII)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 113
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_3

    .line 116
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    :try_start_4
    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mPreferredHeight:I

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->mAllowedToScale:Z

    if-eqz v2, :cond_2

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    move-object v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-object p1, v2

    :catch_1
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v1, :cond_5

    .line 129
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_5
    move-object p1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_3
    move-object p1, v2

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v2, :cond_7

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 131
    :catch_4
    :cond_7
    throw p1

    :catch_5
    move-object p1, v2

    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_8

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v2, :cond_9

    .line 129
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_9
    :goto_3
    return-object p1

    :catch_7
    return-object v2

    :cond_a
    :goto_4
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/net/Uri;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 144
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 146
    :cond_0
    new-array v0, v2, [Landroid/net/Uri;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/FetchBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method
