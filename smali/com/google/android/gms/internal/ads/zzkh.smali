###### Class com.google.android.gms.internal.ads.zzkh (com.google.android.gms.internal.ads.zzkh)
.class final Lcom/google/android/gms/internal/ads/zzkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final s:Lcom/google/android/gms/internal/ads/zzss;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzcn;

.field public final b:Lcom/google/android/gms/internal/ads/zzss;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzhj;

.field public final g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzur;

.field public final i:Lcom/google/android/gms/internal/ads/zzwl;

.field public final j:Ljava/util/List;

.field public final k:Lcom/google/android/gms/internal/ads/zzss;

.field public final l:Z

.field public final m:I

.field public final n:Lcom/google/android/gms/internal/ads/zzby;

.field public final o:Z

.field public volatile p:J

.field public volatile q:J

.field public volatile r:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkh;->s:Lcom/google/android/gms/internal/ads/zzss;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V
    .registers 27

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    return-void
.end method

.method public static g(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 26

    move-object/from16 v11, p0

    .line 1
    new-instance v24, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v0, v24

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcn;->a:Lcom/google/android/gms/internal/ads/zzcn;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzkh;->s:Lcom/google/android/gms/internal/ads/zzss;

    move-object v2, v13

    sget-object v10, Lcom/google/android/gms/internal/ads/zzur;->d:Lcom/google/android/gms/internal/ads/zzur;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->u()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v12

    sget-object v16, Lcom/google/android/gms/internal/ads/zzby;->d:Lcom/google/android/gms/internal/ads/zzby;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v24
.end method

.method public static h()Lcom/google/android/gms/internal/ads/zzss;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkh;->s:Lcom/google/android/gms/internal/ads/zzss;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzss;JJJJLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 39

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method

.method public final c(ZI)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 29

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method

.method public final d(Lcom/google/android/gms/internal/ads/zzhj;)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method

.method public final e(I)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 29

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzcn;)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v25, Lcom/google/android/gms/internal/ads/zzkh;

    move-object/from16 v1, v25

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->b:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->c:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->d:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->e:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->f:Lcom/google/android/gms/internal/ads/zzhj;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->g:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->h:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->i:Lcom/google/android/gms/internal/ads/zzwl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->j:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->k:Lcom/google/android/gms/internal/ads/zzss;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->n:Lcom/google/android/gms/internal/ads/zzby;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;JJILcom/google/android/gms/internal/ads/zzhj;ZLcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzwl;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzss;ZILcom/google/android/gms/internal/ads/zzby;JJJZ)V

    return-object v25
.end method
