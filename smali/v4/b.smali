###### Class v4.b (v4.b)
.class public abstract Lv4/b;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Ly4/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/p<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv4/b;->o:Ly4/p;

    return-void
.end method

.method public constructor <init>(Ly4/p;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/p<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv4/b;->o:Ly4/p;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method final b()Ly4/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly4/p<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lv4/b;->o:Ly4/p;

    return-object v0
.end method

.method public final c(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv4/b;->o:Ly4/p;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ly4/p;->d(Ljava/lang/Exception;)Z

    :cond_7
    return-void
.end method

.method public final run()V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lv4/b;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 2
    invoke-virtual {p0, v0}, Lv4/b;->c(Ljava/lang/Exception;)V

    return-void
.end method
