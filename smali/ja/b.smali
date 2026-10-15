###### Class ja.b (ja.b)
.class public interface abstract Lja/b;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Lja/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lja/b$a;

    invoke-direct {v0}, Lja/b$a;-><init>()V

    sput-object v0, Lja/b;->a:Lja/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lja/e0;Lja/c0;)Lja/a0;
    .param p1    # Lja/e0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

###### Class ja.b.a (ja.b$a)
.class Lja/b$a;
.super Ljava/lang/Object;
.source "Authenticator.java"

# interfaces
.implements Lja/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lja/e0;Lja/c0;)Lja/a0;
    .registers 3
    .param p1    # Lja/e0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method
