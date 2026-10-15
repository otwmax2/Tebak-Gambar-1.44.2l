###### Class com.google.android.gms.internal.ads.zzfle (com.google.android.gms.internal.ads.zzfle)
.class final Lcom/google/android/gms/internal/ads/zzfle;
.super Lcom/google/android/gms/internal/ads/zzfly;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:F

.field private e:I

.field private f:Ljava/lang/String;

.field private g:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfly;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->c:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    return-object p0
.end method

.method public final e(F)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->d:F

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    return-object p0
.end method

.method public final f(Z)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    return-object p0
.end method

.method public final g(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 3

    const-string v0, "Null windowToken"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->a:Landroid/os/IBinder;

    return-object p0
.end method

.method public final h(I)Lcom/google/android/gms/internal/ads/zzfly;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->e:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzflz;
    .registers 14

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_20

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfle;->a:Landroid/os/IBinder;

    if-nez v3, :cond_b

    goto :goto_20

    .line 2
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflg;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfle;->b:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfle;->c:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzfle;->d:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzfle;->e:I

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzfle;->f:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzflg;-><init>(Landroid/os/IBinder;ZLjava/lang/String;IFILjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzflf;)V

    return-object v0

    .line 3
    :cond_20
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->a:Landroid/os/IBinder;

    if-nez v1, :cond_2e

    const-string v1, " windowToken"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_39

    const-string v1, " stableSessionToken"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_44

    const-string v1, " layoutGravity"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4f

    const-string v1, " layoutVerticalMargin"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5a

    const-string v1, " displayMode"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzfle;->g:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_65

    const-string v1, " windowWidthPx"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_65
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
