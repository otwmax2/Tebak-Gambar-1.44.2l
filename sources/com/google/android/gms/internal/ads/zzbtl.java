package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.IOUtils;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@SafeParcelable.Class
@SafeParcelable.Reserved
public final class zzbtl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbtl> CREATOR = new zzbtm();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @SafeParcelable.Field
    ParcelFileDescriptor f11269o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Parcelable f11270p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f11271q = true;

    @SafeParcelable.Constructor
    public zzbtl(@SafeParcelable.Param ParcelFileDescriptor parcelFileDescriptor) {
        this.f11269o = parcelFileDescriptor;
    }

    public final SafeParcelable V3(Parcelable.Creator creator) {
        if (this.f11271q) {
            if (this.f11269o == null) {
                zzbza.d("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.f11269o));
            try {
                try {
                    int i10 = dataInputStream.readInt();
                    byte[] bArr = new byte[i10];
                    dataInputStream.readFully(bArr, 0, i10);
                    IOUtils.b(dataInputStream);
                    Parcel parcelObtain = Parcel.obtain();
                    try {
                        parcelObtain.unmarshall(bArr, 0, i10);
                        parcelObtain.setDataPosition(0);
                        this.f11270p = (Parcelable) creator.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        this.f11271q = false;
                    } catch (Throwable th) {
                        parcelObtain.recycle();
                        throw th;
                    }
                } catch (IOException e10) {
                    zzbza.e("Could not read from parcel file descriptor", e10);
                    IOUtils.b(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                IOUtils.b(dataInputStream);
                throw th2;
            }
        }
        return (SafeParcelable) this.f11270p;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        final ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] parcelFileDescriptorArrCreatePipe;
        if (this.f11269o == null) {
            Parcel parcelObtain = Parcel.obtain();
            try {
                this.f11270p.writeToParcel(parcelObtain, 0);
                final byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                ParcelFileDescriptor parcelFileDescriptor = null;
                try {
                    parcelFileDescriptorArrCreatePipe = ParcelFileDescriptor.createPipe();
                    autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptorArrCreatePipe[1]);
                } catch (IOException e10) {
                    e = e10;
                    autoCloseOutputStream = null;
                }
                try {
                    zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbtk
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            DataOutputStream dataOutputStream;
                            OutputStream outputStream = autoCloseOutputStream;
                            byte[] bArr = bArrMarshall;
                            Parcelable.Creator<zzbtl> creator = zzbtl.CREATOR;
                            DataOutputStream dataOutputStream2 = null;
                            try {
                                try {
                                    dataOutputStream = new DataOutputStream(outputStream);
                                } catch (IOException e11) {
                                    e = e11;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                dataOutputStream.writeInt(bArr.length);
                                dataOutputStream.write(bArr);
                                IOUtils.b(dataOutputStream);
                            } catch (IOException e12) {
                                e = e12;
                                dataOutputStream2 = dataOutputStream;
                                zzbza.e("Error transporting the ad response", e);
                                com.google.android.gms.ads.internal.zzt.q().u(e, "LargeParcelTeleporter.pipeData.1");
                                if (dataOutputStream2 == null) {
                                    IOUtils.b(outputStream);
                                } else {
                                    IOUtils.b(dataOutputStream2);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                dataOutputStream2 = dataOutputStream;
                                if (dataOutputStream2 == null) {
                                    IOUtils.b(outputStream);
                                } else {
                                    IOUtils.b(dataOutputStream2);
                                }
                                throw th;
                            }
                        }
                    });
                    parcelFileDescriptor = parcelFileDescriptorArrCreatePipe[0];
                } catch (IOException e11) {
                    e = e11;
                    zzbza.e("Error transporting the ad response", e);
                    com.google.android.gms.ads.internal.zzt.q().u(e, "LargeParcelTeleporter.pipeData.2");
                    IOUtils.b(autoCloseOutputStream);
                }
                this.f11269o = parcelFileDescriptor;
            } catch (Throwable th) {
                parcelObtain.recycle();
                throw th;
            }
        }
        int iA = SafeParcelWriter.a(parcel);
        SafeParcelWriter.s(parcel, 2, this.f11269o, i10, false);
        SafeParcelWriter.b(parcel, iA);
    }
}
