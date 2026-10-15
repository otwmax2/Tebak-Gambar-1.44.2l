###### Class j2.b (j2.b)
.class public Lj2/b;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lz1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz1/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lj2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj2/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/b;

    invoke-direct {v0}, Lj2/b;-><init>()V

    sput-object v0, Lj2/b;->a:Lj2/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lj2/b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj2/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj2/b;->a:Lj2/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 1
    check-cast p1, Lb2/l;

    invoke-virtual {p0, p1, p2}, Lj2/b;->c(Lb2/l;Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method public c(Lb2/l;Ljava/io/OutputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
