###### Class t6.h (t6.h)
.class public Lt6/h;
.super Ljava/lang/Object;
.source "LibraryVersionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Lt6/h$a;Lk5/e;)Lt6/f;
    .registers 3

    invoke-static {p0, p1, p2}, Lt6/h;->d(Ljava/lang/String;Lt6/h$a;Lk5/e;)Lt6/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lk5/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lt6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lt6/f;

    move-result-object p0

    const-class p1, Lt6/f;

    invoke-static {p0, p1}, Lk5/c;->l(Ljava/lang/Object;Ljava/lang/Class;)Lk5/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Lt6/h$a;)Lk5/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lt6/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lk5/c<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lt6/f;

    invoke-static {v0}, Lk5/c;->m(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v0

    new-instance v1, Lt6/g;

    invoke-direct {v1, p0, p1}, Lt6/g;-><init>(Ljava/lang/String;Lt6/h$a;)V

    .line 3
    invoke-virtual {v0, v1}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lk5/c$b;->d()Lk5/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Ljava/lang/String;Lt6/h$a;Lk5/e;)Lt6/f;
    .registers 4

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, Lt6/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lt6/f;->a(Ljava/lang/String;Ljava/lang/String;)Lt6/f;

    move-result-object p0

    return-object p0
.end method

###### Class t6.h.a (t6.h$a)
.class public interface abstract Lt6/h$a;
.super Ljava/lang/Object;
.source "LibraryVersionComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

###### Class t6.g (t6.g)
.class public final synthetic Lt6/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lt6/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lt6/h$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt6/g;->a:Ljava/lang/String;

    iput-object p2, p0, Lt6/g;->b:Lt6/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lt6/g;->a:Ljava/lang/String;

    iget-object v1, p0, Lt6/g;->b:Lt6/h$a;

    invoke-static {v0, v1, p1}, Lt6/h;->a(Ljava/lang/String;Lt6/h$a;Lk5/e;)Lt6/f;

    move-result-object p1

    return-object p1
.end method
