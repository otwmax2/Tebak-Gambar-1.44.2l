###### Class com.google.android.gms.internal.firebase_auth.zzju (com.google.android.gms.internal.firebase_auth.zzju)
.class final Lcom/google/android/gms/internal/firebase_auth/zzju;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzkd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase_auth/zzjn;

.field private final b:Lcom/google/android/gms/internal/firebase_auth/zzkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/firebase_auth/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->d(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->a:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    return-void
.end method

.method static h(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)Lcom/google/android/gms/internal/firebase_auth/zzju;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzju<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzju;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzju;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjn;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->c:Z

    if-eqz v1, :cond_1b

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->r()Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->g(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->c:Z

    if-eqz v1, :cond_1b

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->s()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->f(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->c:Z

    if-eqz v0, :cond_29

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->m(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->c:Z

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->k(Lcom/google/android/gms/internal/firebase_auth/zzhu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->d:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->p()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->a()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzlt;->x:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v3, v4, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->d()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->b()Z

    move-result v3

    if-nez v3, :cond_52

    .line 7
    instance-of v3, v1, Lcom/google/android/gms/internal/firebase_auth/zziu;

    if-eqz v3, :cond_46

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/firebase_auth/zziu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zziu;->a()Lcom/google/android/gms/internal/firebase_auth/zzis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zziw;->d()Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v1

    .line 9
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->p(ILjava/lang/Object;)V

    goto :goto_a

    .line 10
    :cond_46
    invoke-interface {v2}, Lcom/google/android/gms/internal/firebase_auth/zzhx;->zza()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->p(ILjava/lang/Object;)V

    goto :goto_a

    .line 11
    :cond_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzju;->b:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method
