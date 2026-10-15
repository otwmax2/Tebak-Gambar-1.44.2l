###### Class com.google.android.gms.internal.ads.zzck (com.google.android.gms.internal.ads.zzck)
.class public final Lcom/google/android/gms/internal/ads/zzck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field public static final m:Lcom/google/android/gms/internal/ads/zzn;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field private g:Lcom/google/android/gms/internal/ads/zzd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->i:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->j:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->k:Ljava/lang/String;

    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->l:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcj;->a:Lcom/google/android/gms/internal/ads/zzcj;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzck;->m:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzd;->d:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzc;->b:I

    return p1
.end method

.method public final b()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzd;->a:I

    const/4 v0, 0x0

    return v0
.end method

.method public final c(J)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method public final d(J)I
    .registers 3

    const/4 p1, -0x1

    return p1
.end method

.method public final e(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzc;->a(I)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_49

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_49

    .line 2
    :cond_14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzck;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzck;->c:I

    if-ne v2, v3, :cond_49

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzck;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzck;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_49

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzck;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzck;->f:Z

    if-ne v2, v3, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    return v0

    :cond_49
    :goto_49
    return v1
.end method

.method public final f(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzc;->a(I)I

    move-result p1

    return p1
.end method

.method public final g(II)J
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    .line 2
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzc;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->e:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final h(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzc;->a:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    .line 2
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3
    :goto_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    .line 4
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzck;->c:I

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzck;->d:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3c1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzck;->f:Z

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzd;->b:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzc;->f:J

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzd;Z)Lcom/google/android/gms/internal/ads/zzck;
    .registers 10

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzck;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzck;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzck;->c:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzck;->d:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzck;->e:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzck;->f:Z

    return-object p0
.end method

.method public final l(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzck;->g:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->a(I)Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzc;->g:Z

    const/4 p1, 0x0

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzcj (com.google.android.gms.internal.ads.zzcj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcj;->a:Lcom/google/android/gms/internal/ads/zzcj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
