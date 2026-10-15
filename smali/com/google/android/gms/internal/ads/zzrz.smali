###### Class com.google.android.gms.internal.ads.zzrz (com.google.android.gms.internal.ads.zzrz)
.class final Lcom/google/android/gms/internal/ads/zzrz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztc;
.implements Lcom/google/android/gms/internal/ads/zzpu;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/zztb;

.field private c:Lcom/google/android/gms/internal/ads/zzpt;

.field final synthetic d:Lcom/google/android/gms/internal/ads/zzsb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsb;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzrt;->o(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzrt;->m(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->c:Lcom/google/android/gms/internal/ads/zzpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrz;->a:Ljava/lang/Object;

    return-void
.end method

.method private final n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->a:Ljava/lang/Object;

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/zzso;->c:J

    invoke-virtual {v0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzsb;->z(Ljava/lang/Object;J)J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->a:Ljava/lang/Object;

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzso;->d:J

    .line 2
    invoke-virtual {v0, v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzsb;->z(Ljava/lang/Object;J)J

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzso;->c:J

    cmp-long v2, v8, v0

    if-nez v2, :cond_1f

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzso;->d:J

    cmp-long v2, v10, v0

    if-nez v2, :cond_1f

    return-object p1

    :cond_1f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzso;

    const/4 v3, 0x1

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzso;->a:I

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzso;->b:Lcom/google/android/gms/internal/ads/zzaf;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzso;-><init>(IILcom/google/android/gms/internal/ads/zzaf;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method private final s(ILcom/google/android/gms/internal/ads/zzss;)Z
    .registers 6

    const/4 p1, 0x0

    if-eqz p2, :cond_f

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzsb;->A(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object p2

    if-eqz p2, :cond_e

    goto :goto_10

    :cond_e
    return p1

    :cond_f
    const/4 p2, 0x0

    :goto_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzsb;->y(Ljava/lang/Object;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zztb;->a:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztb;->b:Lcom/google/android/gms/internal/ads/zzss;

    .line 4
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzrt;->p(ILcom/google/android/gms/internal/ads/zzss;J)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->c:Lcom/google/android/gms/internal/ads/zzpt;

    .line 5
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzpt;->a:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpt;->b:Lcom/google/android/gms/internal/ads/zzss;

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->d:Lcom/google/android/gms/internal/ads/zzsb;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrt;->n(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzpt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->c:Lcom/google/android/gms/internal/ads/zzpt;

    :cond_41
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final B(ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;Ljava/io/IOException;Z)V
    .registers 7

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->s(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzrz;->n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zztb;->i(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;Ljava/io/IOException;Z)V

    :cond_10
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->s(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzrz;->n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztb;->g(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V

    :cond_10
    return-void
.end method

.method public final i(ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->s(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzrz;->n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztb;->e(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V

    :cond_10
    return-void
.end method

.method public final p(ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzso;)V
    .registers 4

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->s(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzrz;->n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zztb;->c(Lcom/google/android/gms/internal/ads/zzso;)V

    :cond_10
    return-void
.end method

.method public final v(ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;->s(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->b:Lcom/google/android/gms/internal/ads/zztb;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzrz;->n(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzso;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zztb;->k(Lcom/google/android/gms/internal/ads/zzsj;Lcom/google/android/gms/internal/ads/zzso;)V

    :cond_10
    return-void
.end method
