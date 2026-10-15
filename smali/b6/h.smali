###### Class b6.h (b6.h)
.class final Lb6/h;
.super Lb6/g;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "La6/b;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Le5/a;


# direct methods
.method public constructor <init>(Le5/a;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/a;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "La6/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb6/g;-><init>()V

    .line 2
    iput-object p1, p0, Lb6/h;->p:Le5/a;

    .line 3
    iput-object p2, p0, Lb6/h;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final I6(Lcom/google/android/gms/common/api/Status;Lb6/a;)V
    .registers 7

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, La6/b;

    invoke-direct {v0, p2}, La6/b;-><init>(Lb6/a;)V

    :goto_9
    iget-object v1, p0, Lb6/h;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    if-nez p2, :cond_11

    return-void

    .line 3
    :cond_11
    invoke-virtual {p2}, Lb6/a;->Y3()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "scionData"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_24

    goto :goto_49

    .line 5
    :cond_24
    iget-object p2, p0, Lb6/h;->p:Le5/a;

    if-nez p2, :cond_29

    return-void

    .line 6
    :cond_29
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lb6/h;->p:Le5/a;

    const-string v3, "fdl"

    invoke-interface {v2, v3, v0, v1}, Le5/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_31

    :cond_49
    :goto_49
    return-void
.end method
