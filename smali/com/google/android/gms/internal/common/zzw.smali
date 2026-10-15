###### Class com.google.android.gms.internal.common.zzw (com.google.android.gms.internal.common.zzw)
.class abstract Lcom/google/android/gms/internal/common/zzw;
.super Lcom/google/android/gms/internal/common/zzj;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field final q:Ljava/lang/CharSequence;

.field final r:Lcom/google/android/gms/internal/common/zzo;

.field final s:Z

.field t:I

.field u:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzj;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzx;->a(Lcom/google/android/gms/internal/common/zzx;)Lcom/google/android/gms/internal/common/zzo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzw;->r:Lcom/google/android/gms/internal/common/zzo;

    invoke-static {p1}, Lcom/google/android/gms/internal/common/zzx;->c(Lcom/google/android/gms/internal/common/zzx;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/common/zzw;->s:Z

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/common/zzw;->u:I

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 6
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6c

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/common/zzw;->e(I)I

    move-result v1

    if-ne v1, v2, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    const/4 v3, -0x1

    goto :goto_1d

    .line 3
    :cond_17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/common/zzw;->d(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    :goto_1d
    if-ne v3, v0, :cond_2e

    add-int/lit8 v3, v3, 0x1

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    iput v2, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    goto :goto_2

    :cond_2e
    if-ge v0, v1, :cond_35

    iget-object v3, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_35
    if-ge v0, v1, :cond_3e

    iget-object v3, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    .line 7
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3e
    iget-boolean v3, p0, Lcom/google/android/gms/internal/common/zzw;->s:Z

    if-eqz v3, :cond_47

    if-ne v0, v1, :cond_47

    iget v0, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    goto :goto_2

    :cond_47
    iget v3, p0, Lcom/google/android/gms/internal/common/zzw;->u:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5e

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/common/zzw;->t:I

    if-le v1, v0, :cond_61

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, -0x1

    .line 9
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    goto :goto_61

    :cond_5e
    add-int/2addr v3, v2

    .line 10
    iput v3, p0, Lcom/google/android/gms/internal/common/zzw;->u:I

    .line 11
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzw;->q:Ljava/lang/CharSequence;

    .line 12
    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    .line 13
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_70
    return-object v0
.end method

.method abstract d(I)I
.end method

.method abstract e(I)I
.end method
