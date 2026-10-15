###### Class com.google.android.gms.internal.ads.zzcm (com.google.android.gms.internal.ads.zzcm)
.class public final Lcom/google/android/gms/internal/ads/zzcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final C:Ljava/lang/String;

.field private static final D:Ljava/lang/String;

.field public static final E:Lcom/google/android/gms/internal/ads/zzn;

.field public static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;

.field private static final q:Lcom/google/android/gms/internal/ads/zzbg;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/internal/ads/zzbg;

.field public c:J

.field public d:J

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public i:Lcom/google/android/gms/internal/ads/zzaw;

.field public j:Z

.field public k:J

.field public l:J

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->p:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaj;-><init>()V

    const-string v1, "androidx.media3.common.Timeline"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaj;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaj;->b(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzaj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaj;->c()Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->q:Lcom/google/android/gms/internal/ads/zzbg;

    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->r:Ljava/lang/String;

    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->s:Ljava/lang/String;

    const/4 v0, 0x3

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->t:Ljava/lang/String;

    const/4 v0, 0x4

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->u:Ljava/lang/String;

    const/4 v0, 0x5

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->v:Ljava/lang/String;

    const/4 v0, 0x6

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->w:Ljava/lang/String;

    const/4 v0, 0x7

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->x:Ljava/lang/String;

    const/16 v0, 0x8

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->y:Ljava/lang/String;

    const/16 v0, 0x9

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->z:Ljava/lang/String;

    const/16 v0, 0xa

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->A:Ljava/lang/String;

    const/16 v0, 0xb

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->B:Ljava/lang/String;

    const/16 v0, 0xc

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->C:Ljava/lang/String;

    const/16 v0, 0xd

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzew;->p(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->D:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcl;->a:Lcom/google/android/gms/internal/ads/zzcl;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcm;->E:Lcom/google/android/gms/internal/ads/zzn;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->o:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcm;->q:Lcom/google/android/gms/internal/ads/zzbg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbg;Ljava/lang/Object;JJJZZLcom/google/android/gms/internal/ads/zzaw;JJIIJ)Lcom/google/android/gms/internal/ads/zzcm;
    .registers 26

    move-object v0, p0

    move-object/from16 v1, p12

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    if-nez p2, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcm;->q:Lcom/google/android/gms/internal/ads/zzbg;

    goto :goto_c

    :cond_b
    move-object v2, p2

    :goto_c
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->c:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->d:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->e:J

    move v2, p10

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->f:Z

    move/from16 v2, p11

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    const/4 v3, 0x1

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzcm;->h:Z

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcm;->k:J

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    return-object v0
.end method

.method public final b()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->h:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    :goto_b
    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    if-eqz v0, :cond_18

    return v3

    :cond_18
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_7a

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_7a

    .line 2
    :cond_14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v2, 0x0

    .line 5
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzew;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzcm;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_7a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzcm;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_7a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzcm;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_7a

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->f:Z

    if-ne v2, v3, :cond_7a

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    if-ne v2, v3, :cond_7a

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    if-ne v2, v3, :cond_7a

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_7a

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    if-ne v2, v3, :cond_7a

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    if-ne v2, p1, :cond_7a

    return v0

    :cond_7a
    :goto_7a
    return v1
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcm;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->b:Lcom/google/android/gms/internal/ads/zzbg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbg;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->i:Lcom/google/android/gms/internal/ads/zzaw;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    .line 3
    :cond_17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaw;->hashCode()I

    move-result v1

    :goto_1b
    mul-int/lit16 v0, v0, 0x3c1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->c:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->d:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->e:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->j:Z

    add-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->l:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    mul-int/lit16 v0, v0, 0x3c1

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcm;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzcl (com.google.android.gms.internal.ads.zzcl)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzn;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzcl;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcl;->a:Lcom/google/android/gms/internal/ads/zzcl;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
