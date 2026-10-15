###### Class e8.b (e8.b)
.class public abstract Le8/b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/b$b;,
        Le8/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Le8/b$a;

.field protected final b:Le8/b$b;


# direct methods
.method public constructor <init>(Le8/b$b;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Le8/b;->b:Le8/b$b;

    return-void
.end method


# virtual methods
.method public a(Le8/b$a;)V
    .registers 2

    iput-object p1, p0, Le8/b;->a:Le8/b$a;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 2

    iget-object p1, p0, Le8/b;->a:Le8/b$a;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Le8/b$a;->a(Le8/b;)V

    :cond_7
    return-void
.end method

.method public c(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le8/b;->b(Ljava/lang/String;)V

    return-void
.end method

###### Class e8.b.a (e8.b$a)
.class public interface abstract Le8/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Le8/b;)V
.end method

###### Class e8.b.InterfaceC0155b (e8.b$b)
.class public interface abstract Le8/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()Lorg/json/JSONObject;
.end method

.method public abstract b(Lorg/json/JSONObject;)V
.end method
