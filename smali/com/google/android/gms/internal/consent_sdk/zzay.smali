###### Class com.google.android.gms.internal.consent_sdk.zzay (com.google.android.gms.internal.consent_sdk.zzay)
.class public final Lcom/google/android/gms/internal/consent_sdk/zzay;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@2.0.0"

# interfaces
.implements Lz4/a;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/google/android/gms/internal/consent_sdk/zzbi;

.field private final c:Lcom/google/android/gms/internal/consent_sdk/zzam;

.field private d:Landroid/app/Dialog;

.field private e:Lcom/google/android/gms/internal/consent_sdk/zzbg;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lz4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/consent_sdk/zzaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private final f()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->d:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->d:Landroid/app/Dialog;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->b:Lcom/google/android/gms/internal/consent_sdk/zzbi;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzbi;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzaw;

    if-eqz v0, :cond_20

    iget-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzaw;->p:Lcom/google/android/gms/internal/consent_sdk/zzay;

    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzay;->a:Landroid/app/Application;

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_20
    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/consent_sdk/zzbg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->e:Lcom/google/android/gms/internal/consent_sdk/zzbg;

    return-object v0
.end method

.method final b(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->f()V

    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/a$a;

    if-nez p1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->c:Lcom/google/android/gms/internal/consent_sdk/zzam;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzam;->d(I)V

    .line 4
    invoke-interface {p1, v0}, Lz4/a$a;->a(Lz4/e;)V

    return-void
.end method

.method final c(Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzay;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/a$a;

    if-nez v0, :cond_f

    return-void

    .line 3
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Lz4/e;

    move-result-object p1

    invoke-interface {v0, p1}, Lz4/a$a;->a(Lz4/e;)V

    return-void
.end method

.method final d()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzax;

    if-nez v0, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/consent_sdk/zzax;->a(Lz4/a;)V

    return-void
.end method

.method final e(Lcom/google/android/gms/internal/consent_sdk/zzj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzay;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzax;

    if-nez v0, :cond_c

    return-void

    .line 2
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->a()Lz4/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzax;->b(Lz4/e;)V

    return-void
.end method
