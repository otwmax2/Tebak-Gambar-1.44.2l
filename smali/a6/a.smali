###### Class a6.a (a6.a)
.class public abstract La6/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()La6/a;
    .registers 2

    const-class v0, La6/a;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {}, Lb5/g;->m()Lb5/g;

    move-result-object v1

    invoke-static {v1}, La6/a;->c(Lb5/g;)La6/a;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(Lb5/g;)La6/a;
    .registers 2

    const-class v0, La6/a;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-virtual {p0, v0}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La6/a;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "La6/b;",
            ">;"
        }
    .end annotation
.end method
