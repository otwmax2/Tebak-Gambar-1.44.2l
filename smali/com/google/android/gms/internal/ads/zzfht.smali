###### Class com.google.android.gms.internal.ads.zzfht (com.google.android.gms.internal.ads.zzfht)
.class final Lcom/google/android/gms/internal/ads/zzfht;
.super Lcom/google/android/gms/internal/ads/zzfhq;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfhq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhq;
    .registers 3

    const-string v0, "Null clientVersion"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/internal/ads/zzfhq;
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->c:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/internal/ads/zzfhq;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->b:Z

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzfhr;
    .registers 6

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfht;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_15

    .line 2
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhv;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfht;->b:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfht;->c:Z

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhv;-><init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzfhu;)V

    return-object v1

    .line 3
    :cond_15
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfht;->a:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string v1, " clientVersion"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2e

    const-string v1, " shouldGetAdvertisingId"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfht;->d:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_39

    const-string v1, " isGooglePlayServicesAvailable"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
