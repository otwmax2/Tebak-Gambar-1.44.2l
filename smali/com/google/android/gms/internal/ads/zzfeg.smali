###### Class com.google.android.gms.internal.ads.zzfeg (com.google.android.gms.internal.ads.zzfeg)
.class public final Lcom/google/android/gms/internal/ads/zzfeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:J

.field private final b:Z

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private final m:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfee;Lcom/google/android/gms/internal/ads/zzfef;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->p(Lcom/google/android/gms/internal/ads/zzfee;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->k:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->w(Lcom/google/android/gms/internal/ads/zzfee;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->u(Lcom/google/android/gms/internal/ads/zzfee;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->a:J

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->n(Lcom/google/android/gms/internal/ads/zzfee;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->q(Lcom/google/android/gms/internal/ads/zzfee;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->r(Lcom/google/android/gms/internal/ads/zzfee;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->m:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->t(Lcom/google/android/gms/internal/ads/zzfee;)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->c:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->H(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->d(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->e(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->k(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->m(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->l(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfeg;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfee;->c(Lcom/google/android/gms/internal/ads/zzfee;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfeg;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->c:I

    return v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->a:J

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->b:Z

    return v0
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->k:I

    return v0
.end method

.method public final l()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->l:I

    return v0
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfeg;->m:I

    return v0
.end method
