###### Class com.google.android.gms.internal.ads.zzaiz (com.google.android.gms.internal.ads.zzaiz)
.class public final Lcom/google/android/gms/internal/ads/zzaiz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiz;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaiz;->c:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->d:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->e:Ljava/lang/String;

    return-void
.end method

.method private final d()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiz;->d()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->d:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiz;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->b:I

    goto :goto_c

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->c:I

    add-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiz;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiz;->e:Ljava/lang/String;

    return-void
.end method
