###### Class j2.a (j2.a)
.class public Lj2/a;
.super Ljava/lang/Object;
.source "NullEncoder.java"

# interfaces
.implements Lz1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz1/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lj2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj2/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    sput-object v0, Lj2/a;->a:Lj2/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lz1/b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lz1/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lj2/a;->a:Lj2/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
