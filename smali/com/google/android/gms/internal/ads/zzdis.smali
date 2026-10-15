###### Class com.google.android.gms.internal.ads.zzdis (com.google.android.gms.internal.ads.zzdis)
.class public final Lcom/google/android/gms/internal/ads/zzdis;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/zzbo;

.field private final b:Lcom/google/android/gms/common/util/Clock;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzbo;Lcom/google/android/gms/common/util/Clock;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdis;->a:Lcom/google/android/gms/ads/internal/util/zzbo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdis;->b:Lcom/google/android/gms/common/util/Clock;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdis;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->b:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v3, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdis;->b:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v4

    if-eqz p1, :cond_64

    sub-long/2addr v4, v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v2, v6, :cond_30

    const/4 v3, 0x1

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoded image w: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on ui thread: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :cond_64
    return-object p1
.end method


# virtual methods
.method final synthetic a(DZLcom/google/android/gms/internal/ads/zzakk;)Landroid/graphics/Bitmap;
    .registers 8

    .line 1
    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzakk;->b:[B

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const-wide/high16 v1, 0x4064000000000000L    # 160.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    .line 3
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez p3, :cond_14

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 4
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 5
    :cond_14
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->I5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_55

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/ads/zzdis;->c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 11
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 12
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int p2, p2, p3

    if-lez p2, :cond_55

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbar;->J5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p3

    .line 14
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/lit8 p2, p2, -0x1

    .line 15
    div-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x21

    div-int/lit8 p2, p2, 0x2

    shl-int/2addr p1, p2

    .line 16
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 17
    :cond_55
    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/internal/ads/zzdis;->c([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;DZ)Lcom/google/android/gms/internal/ads/zzfut;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdis;->a:Lcom/google/android/gms/ads/internal/util/zzbo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzbo;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdir;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdir;-><init>(Lcom/google/android/gms/internal/ads/zzdis;DZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdis;->c:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfuj;->l(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfnj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzdir (com.google.android.gms.internal.ads.zzdir)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdis;

.field public final synthetic b:D

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdis;DZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdir;->a:Lcom/google/android/gms/internal/ads/zzdis;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdir;->b:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdir;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->a:Lcom/google/android/gms/internal/ads/zzdis;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdir;->b:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdir;->c:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzakk;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdis;->a(DZLcom/google/android/gms/internal/ads/zzakk;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
