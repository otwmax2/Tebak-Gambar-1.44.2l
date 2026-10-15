package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgk extends zzfa {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f19229e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final DatagramPacket f19230f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Uri f19231g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private DatagramSocket f19232h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MulticastSocket f19233i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private InetAddress f19234j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f19235k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f19236l;

    public zzgk() {
        this(2000);
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final Uri a() {
        return this.f19231g;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final void d() {
        this.f19231g = null;
        MulticastSocket multicastSocket = this.f19233i;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f19234j;
                Objects.requireNonNull(inetAddress);
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f19233i = null;
        }
        DatagramSocket datagramSocket = this.f19232h;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f19232h = null;
        }
        this.f19234j = null;
        this.f19236l = 0;
        if (this.f19235k) {
            this.f19235k = false;
            n();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzr
    public final int e(byte[] bArr, int i10, int i11) throws zzgj {
        if (i11 == 0) {
            return 0;
        }
        if (this.f19236l == 0) {
            try {
                DatagramSocket datagramSocket = this.f19232h;
                Objects.requireNonNull(datagramSocket);
                datagramSocket.receive(this.f19230f);
                int length = this.f19230f.getLength();
                this.f19236l = length;
                w(length);
            } catch (SocketTimeoutException e10) {
                throw new zzgj(e10, 2002);
            } catch (IOException e11) {
                throw new zzgj(e11, 2001);
            }
        }
        int length2 = this.f19230f.getLength();
        int i12 = this.f19236l;
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f19229e, length2 - i12, bArr, i10, iMin);
        this.f19236l -= iMin;
        return iMin;
    }

    @Override // com.google.android.gms.internal.ads.zzfg
    public final long j(zzfl zzflVar) throws zzgj {
        Uri uri = zzflVar.f18368a;
        this.f19231g = uri;
        String host = uri.getHost();
        Objects.requireNonNull(host);
        int port = this.f19231g.getPort();
        o(zzflVar);
        try {
            this.f19234j = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f19234j, port);
            if (this.f19234j.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f19233i = multicastSocket;
                multicastSocket.joinGroup(this.f19234j);
                this.f19232h = this.f19233i;
            } else {
                this.f19232h = new DatagramSocket(inetSocketAddress);
            }
            this.f19232h.setSoTimeout(8000);
            this.f19235k = true;
            p(zzflVar);
            return -1L;
        } catch (IOException e10) {
            throw new zzgj(e10, 2001);
        } catch (SecurityException e11) {
            throw new zzgj(e11, 2006);
        }
    }

    public zzgk(int i10) {
        super(true);
        byte[] bArr = new byte[2000];
        this.f19229e = bArr;
        this.f19230f = new DatagramPacket(bArr, 0, 2000);
    }
}
