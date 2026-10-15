###### Class com.google.android.gms.internal.ads.zzaid (com.google.android.gms.internal.ads.zzaid)
.class public final Lcom/google/android/gms/internal/ads/zzaid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaim;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzaf;

.field private b:Lcom/google/android/gms/internal/ads/zzeu;

.field private c:Lcom/google/android/gms/internal/ads/zzabb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzad;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzad;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaid;->a:Lcom/google/android/gms/internal/ads/zzaf;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzzx;Lcom/google/android/gms/internal/ads/zzaiz;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaid;->b:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaiz;->c()V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaiz;->a()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzzx;->q(II)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaid;->c:Lcom/google/android/gms/internal/ads/zzabb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaid;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzen;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->b:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->b:Lcom/google/android/gms/internal/ads/zzeu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->d()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->b:Lcom/google/android/gms/internal/ads/zzeu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeu;->e()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4c

    cmp-long v6, v0, v4

    if-nez v6, :cond_21

    goto :goto_4c

    :cond_21
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaid;->a:Lcom/google/android/gms/internal/ads/zzaf;

    .line 5
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzaf;->p:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_3b

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaf;->b()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzad;->w(J)Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzad;->y()Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->a:Lcom/google/android/gms/internal/ads/zzaf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaid;->c:Lcom/google/android/gms/internal/ads/zzabb;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->e(Lcom/google/android/gms/internal/ads/zzaf;)V

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->c:Lcom/google/android/gms/internal/ads/zzabb;

    .line 8
    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzabb;->d(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaid;->c:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabb;->f(JIIILcom/google/android/gms/internal/ads/zzaba;)V

    :cond_4c
    :goto_4c
    return-void
.end method
