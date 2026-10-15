###### Class com.google.android.gms.internal.ads.zzaiv (com.google.android.gms.internal.ads.zzaiv)
.class public final Lcom/google/android/gms/internal/ads/zzaiv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzu;


# static fields
.field public static final q:Lcom/google/android/gms/internal/ads/zzaab;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/android/gms/internal/ads/zzen;

.field private final c:Landroid/util/SparseIntArray;

.field private final d:Lcom/google/android/gms/internal/ads/zzaiy;

.field private final e:Landroid/util/SparseArray;

.field private final f:Landroid/util/SparseBooleanArray;

.field private final g:Landroid/util/SparseBooleanArray;

.field private final h:Lcom/google/android/gms/internal/ads/zzair;

.field private i:Lcom/google/android/gms/internal/ads/zzaiq;

.field private j:Lcom/google/android/gms/internal/ads/zzzx;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzais;->b:Lcom/google/android/gms/internal/ads/zzais;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->q:Lcom/google/android/gms/internal/ads/zzaab;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeu;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;-><init>(J)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahk;-><init>(I)V

    const/4 v1, 0x1

    const v2, 0x1b8a0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaiy;I)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzaiy;I)V
    .registers 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->d:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->a:Ljava/util/List;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->f:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 6
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->g:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    .line 7
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    .line 8
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->c:Landroid/util/SparseIntArray;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzair;

    const v0, 0x1b8a0

    .line 9
    invoke-direct {p4, v0}, Lcom/google/android/gms/internal/ads/zzair;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->h:Lcom/google/android/gms/internal/ads/zzair;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzzx;->c:Lcom/google/android/gms/internal/ads/zzzx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->j:Lcom/google/android/gms/internal/ads/zzzx;

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->p:I

    .line 10
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 11
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p4, 0x0

    :goto_54
    if-ge p4, p2, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_54

    :cond_68
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzain;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzait;

    .line 15
    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzait;-><init>(Lcom/google/android/gms/internal/ads/zzaiv;)V

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Lcom/google/android/gms/internal/ads/zzaim;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzaiv;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->k:I

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->f:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzaiv;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->g:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzzx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->j:Lcom/google/android/gms/internal/ads/zzzx;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaiy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->d:Lcom/google/android/gms/internal/ads/zzaiy;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/google/android/gms/internal/ads/zzaiv;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->a:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/google/android/gms/internal/ads/zzaiv;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->p:I

    return-void
.end method

.method static bridge synthetic m(Lcom/google/android/gms/internal/ads/zzaiv;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->k:I

    return-void
.end method

.method static bridge synthetic n(Lcom/google/android/gms/internal/ads/zzaiv;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->l:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzzv;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzk;

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 1
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->k([BIIZ)Z

    const/4 v2, 0x0

    :goto_f
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_2b

    const/4 v3, 0x0

    :goto_14
    const/4 v4, 0x5

    if-ge v3, v4, :cond_26

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 2
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_23

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3
    :cond_26
    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzzk;->o(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2b
    return v1
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->d()J

    move-result-wide v11

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->l:Z

    const-wide/16 v13, -0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_9e

    cmp-long v3, v11, v13

    if-eqz v3, :cond_26

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->h:Lcom/google/android/gms/internal/ads/zzair;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzair;->d()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_26

    .line 2
    :cond_1f
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->p:I

    .line 3
    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzair;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;I)I

    move-result v1

    return v1

    .line 4
    :cond_26
    :goto_26
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->m:Z

    const-wide/16 v7, 0x0

    if-nez v3, :cond_75

    iput-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzaiv;->m:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->h:Lcom/google/android/gms/internal/ads/zzair;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzair;->b()J

    move-result-wide v4

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v16

    if-eqz v6, :cond_65

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzair;->c()Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzair;->b()J

    move-result-wide v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->p:I

    const v16, 0x1b8a0

    move/from16 v17, v3

    move-object v3, v9

    move-wide v13, v7

    move-wide v7, v11

    move-object v15, v9

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Lcom/google/android/gms/internal/ads/zzeu;JJII)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzaiv;->i:Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->j:Lcom/google/android/gms/internal/ads/zzzx;

    .line 5
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzzg;->b()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    goto :goto_76

    :cond_65
    move-wide v13, v7

    .line 6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->j:Lcom/google/android/gms/internal/ads/zzzx;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzair;->b()J

    move-result-wide v6

    invoke-direct {v5, v6, v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(JJ)V

    .line 7
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzzx;->e(Lcom/google/android/gms/internal/ads/zzaax;)V

    goto :goto_76

    :cond_75
    move-wide v13, v7

    .line 8
    :goto_76
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->n:Z

    if-eqz v3, :cond_8d

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->n:Z

    .line 9
    invoke-virtual {v0, v13, v14, v13, v14}, Lcom/google/android/gms/internal/ads/zzaiv;->h(JJ)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzv;->c()J

    move-result-wide v4

    cmp-long v6, v4, v13

    if-nez v6, :cond_89

    goto :goto_8e

    .line 10
    :cond_89
    iput-wide v13, v2, Lcom/google/android/gms/internal/ads/zzaau;->a:J

    const/4 v1, 0x1

    return v1

    :cond_8d
    const/4 v3, 0x0

    .line 11
    :goto_8e
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->i:Lcom/google/android/gms/internal/ads/zzaiq;

    if-eqz v4, :cond_9f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzg;->e()Z

    move-result v5

    if-nez v5, :cond_99

    goto :goto_9f

    .line 12
    :cond_99
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzzg;->a(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzaau;)I

    move-result v1

    return v1

    :cond_9e
    const/4 v3, 0x0

    .line 13
    :cond_9f
    :goto_9f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v5

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-lt v5, v6, :cond_b0

    goto :goto_c2

    .line 14
    :cond_b0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    if-lez v5, :cond_bd

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v2

    .line 15
    invoke-static {v4, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bd
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 16
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->d([BI)V

    .line 17
    :goto_c2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v5

    const/4 v7, -0x1

    if-ge v5, v6, :cond_df

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    rsub-int v5, v2, 0x24b8

    .line 18
    invoke-interface {v1, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzzv;->e([BII)I

    move-result v5

    if-ne v5, v7, :cond_d8

    return v7

    :cond_d8
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    add-int/2addr v2, v5

    .line 19
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    goto :goto_c2

    :cond_df
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->k()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->h()[B

    move-result-object v2

    .line 20
    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzajb;->a([BII)I

    move-result v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    add-int/lit16 v5, v2, 0xbc

    if-le v5, v4, :cond_ff

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->o:I

    sub-int/2addr v2, v1

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->o:I

    goto :goto_101

    .line 22
    :cond_ff
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->o:I

    .line 23
    :goto_101
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->l()I

    move-result v2

    if-le v5, v2, :cond_10a

    return v3

    .line 24
    :cond_10a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->m()I

    move-result v1

    const/high16 v4, 0x800000

    and-int/2addr v4, v1

    if-eqz v4, :cond_119

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 25
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    return v3

    :cond_119
    const/high16 v4, 0x400000

    and-int/2addr v4, v1

    if-eqz v4, :cond_120

    const/4 v10, 0x1

    goto :goto_121

    :cond_120
    const/4 v10, 0x0

    :goto_121
    shr-int/lit8 v4, v1, 0x8

    and-int/lit8 v6, v1, 0x20

    and-int/lit8 v8, v1, 0x10

    and-int/lit16 v4, v4, 0x1fff

    if-eqz v8, :cond_134

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzaja;

    goto :goto_135

    :cond_134
    const/4 v8, 0x0

    :goto_135
    if-nez v8, :cond_13d

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 27
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    return v3

    :cond_13d
    and-int/lit8 v1, v1, 0xf

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaiv;->c:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v1, -0x1

    .line 28
    invoke-virtual {v9, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->c:Landroid/util/SparseIntArray;

    .line 29
    invoke-virtual {v13, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v1, :cond_154

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 30
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    return v3

    :cond_154
    const/4 v13, 0x1

    add-int/2addr v9, v13

    and-int/lit8 v9, v9, 0xf

    if-eq v1, v9, :cond_15d

    .line 31
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzaja;->a()V

    :cond_15d
    if-eqz v6, :cond_179

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 33
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->s()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_171

    const/4 v6, 0x2

    goto :goto_172

    :cond_171
    const/4 v6, 0x0

    :goto_172
    or-int/2addr v10, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    add-int/2addr v1, v7

    .line 34
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    :cond_179
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->l:Z

    if-nez v1, :cond_185

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaiv;->g:Landroid/util/SparseBooleanArray;

    .line 35
    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_196

    :cond_185
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 36
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 37
    invoke-interface {v8, v4, v10}, Lcom/google/android/gms/internal/ads/zzaja;->c(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 38
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzen;->e(I)V

    if-nez v1, :cond_1a3

    :cond_196
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->l:Z

    if-eqz v1, :cond_1a3

    const-wide/16 v1, -0x1

    cmp-long v4, v11, v1

    if-eqz v4, :cond_1a3

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->n:Z

    :cond_1a3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 39
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzen;->f(I)V

    return v3
.end method

.method public final g(Lcom/google/android/gms/internal/ads/zzzx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->j:Lcom/google/android/gms/internal/ads/zzzx;

    return-void
.end method

.method public final h(JJ)V
    .registers 14

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_8
    const-wide/16 v1, 0x0

    if-ge v0, p1, :cond_37

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->a:Ljava/util/List;

    .line 2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeu;->e()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_31

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeu;->c()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    cmp-long v6, v4, v1

    if-eqz v6, :cond_34

    cmp-long v1, v4, p3

    if-eqz v1, :cond_34

    .line 5
    :cond_31
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzeu;->f(J)V

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_37
    cmp-long p1, p3, v1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->i:Lcom/google/android/gms/internal/ads/zzaiq;

    if-eqz p1, :cond_42

    .line 6
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzzg;->d(J)V

    :cond_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->b:Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->c(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->c:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    const/4 p1, 0x0

    :goto_4d
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_63

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaiv;->e:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaja;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_63
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->o:I

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzais (com.google.android.gms.internal.ads.zzais)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzais;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaab;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/ads/zzais;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzais;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzais;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzais;->b:Lcom/google/android/gms/internal/ads/zzais;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaaa;->a(Lcom/google/android/gms/internal/ads/zzaab;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p1

    return-object p1
.end method

.method public final zza()[Lcom/google/android/gms/internal/ads/zzzu;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaiv;->q:Lcom/google/android/gms/internal/ads/zzaab;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzzu;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaiv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(I)V

    aput-object v1, v0, v2

    return-object v0
.end method
