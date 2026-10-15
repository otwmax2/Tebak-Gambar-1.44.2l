###### Class com.google.android.gms.internal.appset.zzr (com.google.android.gms.internal.appset.zzr)
.class public final Lcom/google/android/gms/internal/appset/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/appset/AppSetIdClient;


# instance fields
.field private final a:Lcom/google/android/gms/appset/AppSetIdClient;

.field private final b:Lcom/google/android/gms/appset/AppSetIdClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->h()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/appset/zzp;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/appset/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/appset/zzr;->a:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/appset/zzl;->d(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/zzr;->b:Lcom/google/android/gms/appset/AppSetIdClient;

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/appset/zzr;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_57

    .line 2
    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Exception;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v1, :cond_57

    .line 4
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/ApiException;->b()I

    move-result v0

    const v1, 0xa7f9

    if-eq v0, v1, :cond_51

    const v1, 0xa7fa

    if-eq v0, v1, :cond_51

    const v1, 0xa7fb

    if-eq v0, v1, :cond_51

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2f

    goto :goto_51

    :cond_2f
    const p0, 0xa7f8

    if-ne v0, p0, :cond_40

    .line 5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Failed to get app set ID due to an internal error. Please try again later."

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_57

    :cond_40
    const/16 p0, 0xf

    if-eq v0, p0, :cond_45

    goto :goto_57

    :cond_45
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "The operation to get app set ID timed out. Please try again later."

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->d(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 8
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/google/android/gms/internal/appset/zzr;->b:Lcom/google/android/gms/appset/AppSetIdClient;

    .line 9
    invoke-interface {p0}, Lcom/google/android/gms/appset/AppSetIdClient;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_57
    :goto_57
    return-object p1
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/appset/AppSetIdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/appset/zzr;->a:Lcom/google/android/gms/appset/AppSetIdClient;

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/appset/zzq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/appset/zzq;-><init>(Lcom/google/android/gms/internal/appset/zzr;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->m(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.appset.zzq (com.google.android.gms.internal.appset.zzq)
.class public final synthetic Lcom/google/android/gms/internal/appset/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-appset@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/appset/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/appset/zzr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/appset/zzq;->a:Lcom/google/android/gms/internal/appset/zzr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/appset/zzq;->a:Lcom/google/android/gms/internal/appset/zzr;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/appset/zzr;->b(Lcom/google/android/gms/internal/appset/zzr;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
