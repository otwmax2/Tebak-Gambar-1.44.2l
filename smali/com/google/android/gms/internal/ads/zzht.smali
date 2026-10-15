###### Class com.google.android.gms.internal.ads.zzht (com.google.android.gms.internal.ads.zzht)
.class public final Lcom/google/android/gms/internal/ads/zzht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field final a:Landroid/content/Context;

.field b:Lcom/google/android/gms/internal/ads/zzdm;

.field c:Lcom/google/android/gms/internal/ads/zzfok;

.field d:Lcom/google/android/gms/internal/ads/zzfok;

.field e:Lcom/google/android/gms/internal/ads/zzfok;

.field f:Lcom/google/android/gms/internal/ads/zzfok;

.field g:Lcom/google/android/gms/internal/ads/zzfok;

.field h:Lcom/google/android/gms/internal/ads/zzfnj;

.field i:Landroid/os/Looper;

.field j:Lcom/google/android/gms/internal/ads/zzk;

.field k:I

.field l:Z

.field m:Lcom/google/android/gms/internal/ads/zzkq;

.field n:J

.field o:J

.field p:Z

.field q:Z

.field r:Lcom/google/android/gms/internal/ads/zzhe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;[B)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhn;

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Lcom/google/android/gms/internal/ads/zzcdr;[B)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzho;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzho;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhq;->o:Lcom/google/android/gms/internal/ads/zzhq;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhs;->a:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->a:Landroid/content/Context;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->c:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzht;->d:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzht;->e:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzht;->f:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzht;->g:Lcom/google/android/gms/internal/ads/zzfok;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzht;->h:Lcom/google/android/gms/internal/ads/zzfnj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzew;->e()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->i:Landroid/os/Looper;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzk;->c:Lcom/google/android/gms/internal/ads/zzk;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzht;->j:Lcom/google/android/gms/internal/ads/zzk;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzht;->k:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzht;->l:Z

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzkq;->g:Lcom/google/android/gms/internal/ads/zzkq;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->m:Lcom/google/android/gms/internal/ads/zzkq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhe;

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    const-wide/16 v9, 0x14

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzew;->g0(J)J

    move-result-wide v11

    const v13, 0x3f7fbe77    # 0.999f

    const/16 v16, 0x0

    move-object v3, v2

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzhd;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->r:Lcom/google/android/gms/internal/ads/zzhe;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdm;->a:Lcom/google/android/gms/internal/ads/zzdm;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzht;->b:Lcom/google/android/gms/internal/ads/zzdm;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzht;->n:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzht;->o:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzht;->p:Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzsr;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzzp;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzsf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaab;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzhp (com.google.android.gms.internal.ads.zzhp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzhp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhp;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhp;->o:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzhq (com.google.android.gms.internal.ads.zzhq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzhq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzhq;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhq;->o:Lcom/google/android/gms/internal/ads/zzhq;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhf;-><init>()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzhs (com.google.android.gms.internal.ads.zzhs)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzhs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzhs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhs;->a:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zznf;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdm;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Lcom/google/android/gms/internal/ads/zzdm;)V

    return-object v0
.end method
