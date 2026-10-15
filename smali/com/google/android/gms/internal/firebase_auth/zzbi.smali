###### Class com.google.android.gms.internal.firebase_auth.zzbi (com.google.android.gms.internal.firebase_auth.zzbi)
.class final Lcom/google/android/gms/internal/firebase_auth/zzbi;
.super Lcom/google/android/gms/internal/firebase_auth/zzbg;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final transient q:I

.field private final transient r:I

.field private final synthetic s:Lcom/google/android/gms/internal/firebase_auth/zzbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzbg;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzbg;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->q:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->r:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->r:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->q:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final j()[Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;->j()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final k()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;->k()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->q:I

    add-int/2addr v0, v1

    return v0
.end method

.method final l()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzbh;->k()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final n(II)Lcom/google/android/gms/internal/firebase_auth/zzbg;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->r:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzav;->d(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->s:Lcom/google/android/gms/internal/firebase_auth/zzbg;

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->q:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzbg;

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzbi;->r:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzbg;->n(II)Lcom/google/android/gms/internal/firebase_auth/zzbg;

    move-result-object p1

    return-object p1
.end method
