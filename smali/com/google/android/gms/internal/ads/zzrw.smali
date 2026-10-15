###### Class com.google.android.gms.internal.ads.zzrw (com.google.android.gms.internal.ads.zzrw)
.class final Lcom/google/android/gms/internal/ads/zzrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuj;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzuj;

.field private b:Z

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzrx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzuj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    return-void
.end method


# virtual methods
.method public final W(J)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrx;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, -0x3

    return p1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuj;->W(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrx;->l()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->b:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_14

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzgl;->c(I)V

    return v3

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuj;->a(Lcom/google/android/gms/internal/ads/zzjo;Lcom/google/android/gms/internal/ads/zzgr;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_4a

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->B:I

    const/4 v1, 0x0

    if-nez p3, :cond_2e

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    if-eqz p3, :cond_49

    const/4 p3, 0x0

    :cond_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_37

    goto :goto_39

    .line 5
    :cond_37
    iget v1, p2, Lcom/google/android/gms/internal/ads/zzaf;->C:I

    .line 6
    :goto_39
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzad;->c(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 8
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzad;->d(I)Lcom/google/android/gms/internal/ads/zzad;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzjo;->a:Lcom/google/android/gms/internal/ads/zzaf;

    :cond_49
    return v0

    :cond_4a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/zzrx;->s:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_72

    if-ne p3, v3, :cond_5a

    iget-wide v8, p2, Lcom/google/android/gms/internal/ads/zzgr;->e:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_68

    :cond_5a
    if-ne p3, v1, :cond_72

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrx;->zzb()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_72

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzgr;->d:Z

    if-nez p1, :cond_72

    .line 11
    :cond_68
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgl;->b()V

    .line 12
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzgl;->c(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrw;->b:Z

    return v3

    :cond_72
    return p3
.end method

.method public final b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->c:Lcom/google/android/gms/internal/ads/zzrx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrx;->l()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->b:Z

    return-void
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrw;->a:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuj;->d()V

    return-void
.end method
