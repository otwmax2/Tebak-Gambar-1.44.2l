###### Class com.google.android.gms.internal.firebase_auth.zzbb (com.google.android.gms.internal.firebase_auth.zzbb)
.class abstract Lcom/google/android/gms/internal/firebase_auth/zzbb;
.super Lcom/google/android/gms/internal/firebase_auth/zzae;
.source "com.google.firebase:firebase-auth@@19.3.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase_auth/zzae<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final q:Ljava/lang/CharSequence;

.field private final r:Lcom/google/android/gms/internal/firebase_auth/zzaf;

.field private final s:Z

.field private t:I

.field private u:I


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzau;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzau;->a(Lcom/google/android/gms/internal/firebase_auth/zzau;)Lcom/google/android/gms/internal/firebase_auth/zzaf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->r:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->s:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_auth/zzau;->d(Lcom/google/android/gms/internal/firebase_auth/zzau;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->u:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    .line 2
    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_90

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbb;->d(I)I

    move-result v1

    if-ne v1, v2, :cond_16

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    goto :goto_1c

    .line 6
    :cond_16
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzbb;->e(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    .line 7
    :goto_1c
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    if-ne v3, v0, :cond_2f

    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    .line 10
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    goto :goto_2

    :cond_2f
    :goto_2f
    if-ge v0, v1, :cond_42

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->r:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->b(C)Z

    move-result v3

    if-eqz v3, :cond_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_42
    :goto_42
    if-le v1, v0, :cond_57

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->r:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->b(C)Z

    move-result v3

    if-eqz v3, :cond_57

    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 13
    :cond_57
    iget-boolean v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->s:Z

    if-eqz v3, :cond_60

    if-ne v0, v1, :cond_60

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    goto :goto_2

    .line 15
    :cond_60
    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->u:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->t:I

    :goto_6d
    if-le v1, v0, :cond_85

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->r:Lcom/google/android/gms/internal/firebase_auth/zzaf;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzaf;->b(C)Z

    move-result v2

    if-eqz v2, :cond_85

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_82
    sub-int/2addr v3, v4

    .line 19
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->u:I

    .line 20
    :cond_85
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbb;->q:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzae;->b()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract d(I)I
.end method

.method abstract e(I)I
.end method
