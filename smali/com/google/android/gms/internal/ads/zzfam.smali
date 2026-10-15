###### Class com.google.android.gms.internal.ads.zzfam (com.google.android.gms.internal.ads.zzfam)
.class final Lcom/google/android/gms/internal/ads/zzfam;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfal;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->a:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzfal;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->a:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfal;->a()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->a:Lcom/google/android/gms/internal/ads/zzfal;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfal;->o:Z

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzfal;->p:Z

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->d:I

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->b:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->c:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->f:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfam;->e:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->f:I

    return-void
.end method

.method public final d()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->a:Lcom/google/android/gms/internal/ads/zzfal;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfal;->o:Z

    return-void
.end method

.method public final e()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->e:I

    return-void
.end method

.method public final f()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->d:I

    return-void
.end method

.method public final g()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->c:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfam;->a:Lcom/google/android/gms/internal/ads/zzfal;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfal;->p:Z

    return-void
.end method
